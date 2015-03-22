//Create whatever markers and portals, etc. that are supposed to exist in the given town
//using whatever that current town's mask sprite is. (The mask sprite helps indicate whether
//certain areas are currently inaccessible, or at least it will do that if we ever make it
//do that.)
//Arguments: town id, town mask sprite

townId = argument0
mask = argument1

backButtonXPos = 0
backButtonYPos = 678


if townId == 'town1' {
    //Portals
    if mask == spr_town1Mask {
        new = instance_create(108, 393, townPortal)
        new.mask_index = spr_mask130x65
        new.portal = 'town1Tavern'
        
        new = instance_create(915, 364, townPortal)
        new.mask_index = spr_mask55x35
        new.dialogueId = 't1p1d1'   //TODO maybe make this area an accessible portal based on certain conditions
    }
    
    //Markers
    TryNpcMarker('t1n1d1', 500, 350)
    
    //Back button
    new = instance_create(backButtonXPos, backButtonYPos, townBackButton)
    new.portal = 'ocean'
    //TODO change coords
    new.oceanX = g_town1X
    new.oceanY = g_town1Y
    new.oceanDir = g_town1Dir
    
    //Auto-dialogue
    TryAutoDialogue('t1a1d1')
}

else if townId == 'town1Tavern' {
    //Portals
    if mask == spr_tavern1Mask {
        new = instance_create(411, 188, townPortal)
        new.mask_index = spr_mask45x110
        new.portal = 'town1'
    }
    
    //Markers
    TryNpcMarker('v1n1d1', 674, 261)
    
    //Auto-dialogue
    TryAutoDialogue('v1a1d1')
}

else if townId == 'town2' {
    //Portals
    new = instance_create(269, 303, townPortal)
    new.mask_index = spr_mask400x200
    new.portal = 'town2Tavern'
    
    //Markers
    
    //Back button
    new = instance_create(backButtonXPos, backButtonYPos, townBackButton)
    new.portal = 'ocean'
    new.oceanX = g_town2X
    new.oceanY = g_town2Y
    new.oceanDir = g_town2Dir
}

else if townId == 'town2Tavern' {
    //Portals
    if mask == spr_tavern1Mask {
        new = instance_create(411, 188, townPortal)
        new.mask_index = spr_mask45x110
        new.portal = 'town2'
    }
    
    //Markers
    if ds_list_find_index(g_townMarkers, 'v2n1d1') != -1 {
        new = instance_create(649, 370, townNpcMarker)
        new.dialogueId = 'v2n1d1'
    }
}

else
    show_error("Invalid town: " + townId, 0)