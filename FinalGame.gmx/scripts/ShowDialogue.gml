//Show dialogue sequence
//Arguments: dialogue sequence id

with dialogueMgr {
bVisible = true
bUsable = true

if argument0 == "t1n1d1" {
ds_list_add(list, 'g one')
ds_list_add(list, 'l test')
ds_list_add(list, 'g again')
}

alarm[0] = alarmTime
}
