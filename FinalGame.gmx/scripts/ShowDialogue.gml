//Show dialogue sequence
//(All dialogue is stored in this script)
//Arguments: dialogue sequence id

with dialogueMgr {
bUsable = true

if argument0 == 't1a1d1' {
ds_list_add(list, "l This plays automatically for town1.")
ds_list_add(list, "g But only once!")
}

else if argument0 == 't1p1d1' {
ds_list_add(list, "g Hey, where are you going?")
ds_list_add(list, "l Nowhere.")
}

else if argument0 == 't1n1d1' {
ds_list_add(list, "Citizen Hi.")
ds_list_add(list, "g Not interested.")
ds_list_add(g_townMarkers, 'v1a1d1')
}

else if argument0 == 'v1a1d1' {
ds_list_add(list, "g Auto-dialogue for town1Tavern (only if talked to citizen outside).")
}

else if argument0 == 'v1n1d1' {
ds_list_add(list, "l Tavern dialogue?")
ds_list_add(list, "g Yes. This is a long string of dialogue which wraps when it hits the edge of the textbox. It only wraps horizonally; it's your responsibility to see that it doesn't go beyond the vertical borders of the textbox.")
}

else if argument0 == 'v2n1d1' {
ds_list_add(list, "l Tavern 2 dialogue.")
}

else
    show_error("Invalid dialogue: " + argument0, 0)

if townMgr.bMoveReady {
    //Note: If the town manager is not ready, it'll do this itself in a bit.
    bVisible = true
    alarm[0] = alarmTime
}
}