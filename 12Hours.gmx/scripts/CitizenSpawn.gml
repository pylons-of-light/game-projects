//Create a random citizen or child; called by npcManager's alarm[0]
//Arguments: none

with npcManager {
    //Determine Child or Adult
    ran_type = irandom(5)
    if(ran_type < 5)
        type = citizen
    else
        type = child            
    
    //Determine Spawn Location
    spawn_x = round(irandom_range(100, room_width - 100))
    spawn_y = round(irandom_range(100, room_width - 100))
    
    //Spawn
    show_debug_message("Spawning NPC at " + string(spawn_x) + "," + string(spawn_y))
    instance_create(spawn_x, spawn_y, type)
    
    nextSpawnTime = 0
    
    nextSpawnTime += floor(SECOND * random(15))
    
    show_debug_message("Next NPC spawn in " + string(nextSpawnTime) + " frames.")
    
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
