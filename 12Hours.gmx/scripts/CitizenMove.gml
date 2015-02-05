//Citizen Movement AI
//Arguments: citizen instance

with argument0 {
    /*count = 0
    with citizen {   //Note that this automatically excludes the current instance
        if self != other
            other.count += 1
            continue
    }
    dialogue = string(count)
    */
    
    if bDying or bCowering
        exit
    
    if not bGrayed and distance_to_object(reaper) < 100
    {
        bRunning = true
        alarm[1] = room_speed * (2 + random(4));   //Run away for 2 to 6 seconds.
    }
    
    if bRunning
    {
        image_speed = .3

        /* prevent npc from leaving room
        if( (x - runSpeed > 50 && x + runSpeed < room_width - 50 ) &&
            (y - runSpeed > 50 && y + runSpeed < room_height - 50 ) ){
            mp_potential_step(reaper.x, reaper.y, -runSpeed, false)
        }
        */
        
        reached = mp_potential_step(reaper.x, reaper.y, -runSpeed, false)
        
        if(reached == true)
        {
            image_speed = 0
        }
        
        SetCitizenSprite(self)
           
        if random(1) < .01
            ShowDialogue(self, fleeDialogue[irandom(FLEE_DL_MAX)], 3)
    }
    
    if not bRunning
    {
        alarm[11] += 1;
        if alarm[11] > 300 || (ranx == x && rany == y)
        {
          SetCitizenMoveLocation(self)
          
          if(choose(0, 1) == 1)
            ShowDialogue(self, wanderDialogue[irandom(WANDER_DL_MAX)], 3)
        }
        else
        {
            image_speed = .2
            
            reached = mp_potential_step(ranx, rany, walkSpeed, 0)
            
            if(reached == true)
            {
                image_speed = 0
            }
            
            SetCitizenSprite(self)
        }
    }
    
    
    //TODO call SetCitizenSprite(self), if 'direction' has changed.
    //TODO set animation to moving or static depending on speed
}
