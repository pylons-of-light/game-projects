//Citizen Movement AI
//Arguments: citizen instance

with argument0 {
    //TODO: NPC AI. Note that argument0 is treated as the current instance inside this 'with' block
    
    if distance_to_object(reaper) < 50
        mp_potential_step(reaper.x, reaper.y, -CITIZEN_SPEED, false)
    
    dialog[0] = "Line 1";
    dialog[1] = "Line 2";
    dialog[2] = "Line 3";
    dialog[3] = "Line 4";
    dialog[4] = "Line 5";
        
        
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
        ShowDialogue(self, dialog[random(4)], 5)
    }
    else
    {                                  
      mp_potential_step(ranx, rany, 3, 0)
    }        
        
    //TODO cowering under certain conditions?
    //note that there's currently no child cower sprite; maybe kids never cower.
    
    //TODO call SetCitizenSprite(self), if 'direction' has changed.
    //TODO set animation to moving or static depending on speed
    //TODO an npc who exits the level should be destroyed, to keep instance_number(citizen) counts low
}
