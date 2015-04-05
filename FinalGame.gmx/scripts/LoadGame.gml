game_load('save.ini')

if not file_exists('save_data_structures.ini')
    show_message("Error: Corrupted save file.")
else {
    /*
    ini_open('save_data_structures.ini')
    
    g_removePersistenceFrom = ds_list_create()
    var str = ini_read_string("Lists", "g_removePersistenceFrom", "");
    if str != ""
        ds_list_read(g_removePersistenceFrom, str)
    
    g_townMarkers = ds_list_create()
    str = ini_read_string("Lists", "g_townMarkers", "");
    if str != ""
        ds_list_read(g_townMarkers, str)
    
    g_dlg = ds_list_create()
    str = ini_read_string("Lists", "g_dlg", "");
    if str != ""
        ds_list_read(g_dlg, str)
    
    g_usedChests = ds_list_create()
    str = ini_read_string("Lists", "g_usedChests", "");
    if str != ""
        ds_list_read(g_usedChests, str)
    
    ini_close()
    
    show_message("Save file loaded.")
    */
}
