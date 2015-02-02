//Create a random citizen or child; called by npcManager's alarm[0]
//Arguments: none

with npcManager {
    show_debug_message("Spawning npc")
    
    //Determine Child or Adult
    ran_type = random(4)
    if(ran_type < 4)
        type = citizen
    else
        type = child            
    
    //Determine Spawn Location
    spawn_x = random(room_width - 100) + 50
    spawn_y = random(room_height - 100) + 50
    
    //Spawn
    instance_create(spawn_x, spawn_y, type)
    
    //Set random movement
    //SetCitizenMoveLocation(self);  
    
    nextSpawnTime = 0
    
    nextSpawnTime += random(30) * 5
    
    show_debug_message("Next npc spawn in " + string(nextSpawnTime) + " seconds.")
    
    alarm[0] = nextSpawnTime    
  

    //TODO generate a citizen or child somewhere
    
    //TODO call alarm[0] again
    //
    //The delay used should be somewhat random and should depend on instance_number(citizen).
    //
    //We could also make NPCs rarer later in the level, by incorporating a ratio between the overall
    //time duration for the level and the current time that has elapsed in the level
    //(see the global vars in levelManager's Create event).    
}