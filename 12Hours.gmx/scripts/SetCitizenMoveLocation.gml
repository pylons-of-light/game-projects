//Set the npc new move location dialogue box for a person.
//Arguments: person instance

with argument0 {
    ranx = x - 300 + random(600);
    rany = y - 300 + random(600);
    
    if ranx > room_width  
      ranx = room_width - 50
    
    if ranx < 0 || ranx == 0
      ranx = 50
      
    if rany > room_height
      rany = room_height - 50
    
    if rany < 0 || rany == 0
      rany = 50
    
    alarm[11] = 0  
      
    show_debug_message("set citizen move to: " + string(ranx) + ", " + string(rany));
}