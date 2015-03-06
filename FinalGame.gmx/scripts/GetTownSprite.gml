//Get the sprite associated with a town
//Arguments: town id

townId = argument0

if townId == 'town1'
    return spr_town1
if townId == 'town1Tavern'
    return spr_tavern1

if townId == 'town2'
    return spr_town2
if townId == 'town2Tavern'
    return spr_tavern1

show_error("Invalid town: " + townId, 0)