//Create the town markers (NPC markers, quest markers, portals, and back buttons) that exist when
//the game starts.
//Arguments: none


//Town 1
ds_list_add(g_townMarkers, 't1a1')
ds_list_add(g_townMarkers, 't1p1')
ds_list_add(g_townMarkers, 't1n1')
//Tavern
//Note that auto-dialogue isn't here; happens when you talk to that citizen outside.
ds_list_add(g_townMarkers, 'v1n1')


//Town 2
ds_list_add(g_townMarkers, 't2n1')
//Tavern
ds_list_add(g_townMarkers, 'v2n1')

//Town 3
ds_list_add(g_townMarkers, 't3n1')
//Tavern
ds_list_add(g_townMarkers, 'v3n1')

//Town 4
ds_list_add(g_townMarkers, 't4a1')

//Town 5
ds_list_add(g_townMarkers, 't5n1')
ds_list_add(g_townMarkers, 't5n2')
