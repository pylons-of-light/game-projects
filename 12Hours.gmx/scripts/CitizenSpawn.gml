//Create a random citizen or child; called by npcManager's alarm[0]
//Arguments: none

with npcManager {
    show_debug_message("Spawning npc")
    
    //Determine Child or Adult
    
    var childCount = instance_number(child)
    
    //Only a sixth of the max NPCs can be kids; also, only make kids when the player isn't low on health
    if g_health <= HEALTH_MAX / 3 or childCount >= floor(max_npcs / 6)
        type = citizen
    else {
        var ran_type = irandom(4)
        if(ran_type < 4)   //4 in 5 chance of getting an adult
            type = citizen
        else
            type = child
    }
    
    //Determine Spawn Location
    var searchCount = 0
    var searchMax = 20000   //Try this many random locations to place a NPC, if we keep hitting obstacles when spawning the NPC
    while true {
        spawn_x = round(irandom_range(100, room_width - 100))
        spawn_y = round(irandom_range(100, room_height - 100))
        
        //Did we hit an empty spot?
        if  place_free(spawn_x, spawn_y)
        and place_free(spawn_x-30, spawn_y-30)
        and place_free(spawn_x+30, spawn_y-30)
        and place_free(spawn_x-30, spawn_y+30)
        and place_free(spawn_x+30, spawn_y+30) {   //Note that npcManager's mask is used to perform this check, so it must be at least as big as a citizen sprite could be.
            show_debug_message("new NPC")
            break
        }
        
        //TODO maybe uncomment; for now, we just keep looking forever, since we know we must find a place eventually.
        //searchCount += 1
        
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
    
    if g_health <= HEALTH_MAX / 3
        nextSpawnTime += floor(SECOND * random(4))
    else
        nextSpawnTime += floor(SECOND * random(9))
    
    if room == level2 {   //Tweak this room's mechanics a bit
        nextSpawnTime *= .9
    }
    
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
