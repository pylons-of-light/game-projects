//Create whatever auto-dialogues and other stuff that is supposed to exist in the ocean right now.

//By the way, it's important to create these things a little distance away from the ports,
//so if the player emerges from a port, the player doesn't immediately crash into them!
//That would actually trigger a warp back into the port town, thus making the game basically
//unplayable.

//Important: Gold goals are check for in navalMgr

TryAutoDialogue('oa1', true)

//Saintalmain's ship
if ds_list_find_index(g_townMarkers, 'ship_spawn1') != -1 {
    var new = instance_create(g_town2X+100, g_town2Y+200, specialShip1);
    new.direction = g_town2Dir
    new.image_angle = new.direction
}

//TODO Priest's ship

//TODO Unlock final dungeon
