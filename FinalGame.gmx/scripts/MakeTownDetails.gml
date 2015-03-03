//Create the markers and portals that indicate a town
//Arguments: town sprite, town mask sprite

spr = argument0
mask = argument1

if spr == spr_town1 {
    //Masks
    if mask == spr_town1Mask {
        new = instance_create(108, 393, townPortal)
        new.mask_index = spr_mask130x65
        new.portal = spr_town1Mask
        
        new = instance_create(915, 364, townPortal)
        new.mask_index = spr_mask55x35
        new.dialogueId = "t1n1d1"
    }
    
    //Markers
    if ds_list_find_index(g_townNpcMarkers, "t1n1d1") != -1 {
        new = instance_create(500, 350, townNpcMarker)
        new.dialogueId = "t1n1d1"
    }
}