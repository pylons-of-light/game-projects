//Citizen Movement AI
//Arguments: citizen instance

with argument0 {
    if bDying or bCowering
        exit
    
    if distance_to_object(reaper) < 100
    {
        bRunning = true
        alarm[1] = room_speed * (2 + random(4));   //Run away for from 2 to 6 seconds.
    }
    
    if bRunning
    {
        mp_potential_step(reaper.x, reaper.y, -runSpeed, false)
        
        if random(1) < .01
            ShowDialogue(self, fleeDialogue[irandom(FLEE_DL_MAX)], 3)
    }
    
    if not bRunning
    {
        alarm[11] += 1;
        if alarm[11] > 300
        {
          ranx = x - 300 + random(600);
          rany = y - 300 + random(600);
          
          if ranx > room_width  
            ranx = room_width - 25
          
          if ranx < 0 || ranx == 0
            ranx = 25
            
          if rany > room_height
            rany = room_height - 25
          
          if rany < 0 || rany == 0
            rany = 25
          
          alarm[11] = 0;
          if(choose(0, 1) == 1)
            ShowDialogue(self, wanderDialogue[irandom(WANDER_DL_MAX)], 3)
        }
        else
        {                                  
          mp_potential_step(10, 12, walkSpeed, 0)
        }
    }
    
    //TODO cowering under certain conditions?
    //note that there's currently no child cower sprite; maybe kids never cower.
    
    //TODO call SetCitizenSprite(self), if 'direction' has changed.
    //TODO set animation to moving or static depending on speed
    
    //TODO an npc who exits the level should be destroyed, to keep instance_number(citizen) counts low
    //TODO or, ignore that; maybe just let them reenter the map randomly, like they already do now.
}
