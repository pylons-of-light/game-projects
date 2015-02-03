//Set the npc new move location dialogue box for a person.
//Arguments: person instance

with argument0 {
    ranx = x - 300 + random(600);
    rany = y - 300 + random(600); 
     
    if(ranx >= room_width){
        ranx = room_width - 100;
    } else if(ranx <= 0){
        ranx = 100;
    }
    
    if(rany >= room_height){
        rany = room_height - 100;
    } else if(rany <= 0){
        rany = 100;
    }   
    
    alarm[11] = 0;
      
    show_debug_message("set citizen move to: " + string(ranx) + ", " + string(rany));
}
