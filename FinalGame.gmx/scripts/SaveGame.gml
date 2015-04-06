ini_open('save.ini')

/*
var str = ds_list_write(g_removePersistenceFrom)
ini_write_string("Lists", "g_removePersistenceFrom", str)
*/

str = ds_list_write(g_townMarkers)
ini_write_string("Lists", "g_townMarkers", str)

str = ds_list_write(g_dlg)
ini_write_string("Lists", "g_dlg", str)

str = ds_list_write(g_usedChests)
ini_write_string("Lists", "g_usedChests", str)





ini_close()

//show_message("Game saved.")
