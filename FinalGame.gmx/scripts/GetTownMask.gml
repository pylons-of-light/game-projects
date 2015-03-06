//Get the mask sprite currently associated with a town sprite
//Arguments: town id

townId = argument0

if townId == 'town1'
    return spr_town1Mask
if townId == 'town1Tavern'
    return spr_tavern1Mask

if townId == 'town2'
    return spr_town2Mask
if townId == 'town2Tavern'
    return spr_tavern1Mask

return spr_empty