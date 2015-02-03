//Create a random citizen or child; called by npcManager's alarm[0]
//Arguments: none

with npcManager {
    show_debug_message("Spawning npc")
    
    //Determine Child or Adult
    
    var childCount = instance_number(child)
    
    if childCount >= max_npcs / 5   //Only a fifth of the max NPCs can be kids
        type = citizen
    else {
        var ran_type = irandom(4)
        if(ran_type < 4)   //4 in 5 chance
            type = citizen
        else
            type = child
    }
    
    //Determine Spawn Location
    var searchCount = 0
    var searchMax = 1000   //Try this many random locations to place a NPC, if we keep hitting obstacles when spawning the NPC
    while true {
        spawn_x = round(irandom_range(100, room_width - 100))
        spawn_y = round(irandom_range(100, room_width - 100))
        
        //Did we hit an empty spot?
        if  place_free(spawn_x, spawn_y)
        and place_free(spawn_x + type.sprite_width-1, spawn_y)
        and place_free(spawn_x, spawn_y + type.sprite_height-1)
        and place_free(spawn_x + type.sprite_width-1, spawn_y + type.sprite_height-1) {
            show_debug_message("new NPC")
            break
        }
        
        //If we didn't hit an empty spot, just keep looking...
        
        //Unless we failed to find any spot after many iterations
        if searchCount >= searchMax {
            show_debug_message("no empty spot for new NPC")
            break
        }
    }
    
    
    var nextSpawnTime = 0
    
    with citizen {
        if not bGrayed
            nextSpawnTime += SECOND * (4 + 2 * (1-g_levelEasiness))
        else
            nextSpawnTime += SECOND * (1 + 2 * (1-g_levelEasiness))
    }
    
    //temporarily commented out
    //nextSpawnTime += SECOND * (10 + 10 * (1-g_levelEasiness))
    
    nextSpawnTime += floor(SECOND * random(10))
    
    //Spawn
    if searchCount < searchMax {
        instance_create(spawn_x, spawn_y, type)
        show_debug_message("Spawning NPC at " + string(spawn_x) + "," + string(spawn_y))
    }
    
    
    //Set random movement
    //SetCitizenMoveLocation(self);  
    
    show_debug_message("Next NPC spawn in " + string(nextSpawnTime) + " frames.")
    
    alarm[0] = nextSpawnTime
  
    //TODO maybe:
    //We could also make NPCs rarer later in the level, by incorporating a ratio between the overall
    //time duration for the level and the current time that has elapsed in the level
    //(see the global vars in levelManager's Create event).    
}
