//Show dialogue sequence
//(All dialogue is stored in this script)
//Arguments: dialogue sequence id

with dialogueMgr {
bUsable = true

//------ Town 1 ------

if argument0 == 't1a1' {
//ds_list_add(g_dlg, "l This plays automatically for town1.")
//ds_list_add(g_dlg, "g But only once!")
//ds_list_add(g_dlg, "l We should stay low for now, try not to attract attention.")
ds_list_add(g_dlg, "l exiting")
ds_list_add(g_dlg, "g why")
//ds_list_add(g_dlg, "goto ocean")
ds_list_add(g_dlg, "goto town1Tavern")
ds_list_add(g_dlg, "l okay")
}

else if argument0 == 't1p1' {
ds_list_add(g_dlg, "g Hey, where are you going?")
ds_list_add(g_dlg, "l Nowhere.")
}

else if argument0 == 't1n1' {
ds_list_add(g_dlg, "Citizen Hi.")
ds_list_add(g_dlg, "g Not interested.")
ds_list_add(g_townMarkers, 'v1a1')
}

else if argument0 == 'v1a1' {
ds_list_add(g_dlg, "g Auto-dialogue for town1Tavern (only if talked to citizen outside).")
}

else if argument0 == 'v1n1' {
ds_list_add(g_dlg, "l Tavern dialogue?")
ds_list_add(g_dlg, "g Yes. This is a long string of dialogue which wraps when it hits the edge of the textbox. It only wraps horizonally; it's your responsibility to see that it doesn't go beyond the vertical borders of the textbox.")
}

//------ Town 2 ------

else if argument0 == 't2n1' {
ds_list_add(g_dlg, "g Town 2 dialogue.")
}

else if argument0 == 'v2n1' {
ds_list_add(g_dlg, "l Tavern 2 dialogue.")
}

//------ Town 3 ------

else if argument0 == 't3n1' {
ds_list_add(g_dlg, "l Town 3 dialogue.")
}

else if argument0 == 'v3n1' {
ds_list_add(g_dlg, "l Tavern 3 dialogue.")
}

//------ Town 4 ------

else if argument0 == 't4a1' {
ds_list_add(g_dlg, "l ... I hate this place. Let's get out of here and never come back.")
ds_list_add(g_dlg, "goto ocean")
}

//------ Town 5 ------

else if argument0 == 't5n1' {
ds_list_add(g_dlg, "l Town 5 dialogue.")
}

else if argument0 == 't5n2' {
ds_list_add(g_dlg, "l Town 5 more dialogue.")
}


else
    show_error("Invalid dialogue: " + argument0, 0)

if townMgr.bMoveReady {
    //Note: If the town manager is not ready, it'll do this itself in a bit.
    bVisible = true
    alarm[0] = alarmTime
}
}
