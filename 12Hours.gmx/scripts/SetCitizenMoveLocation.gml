//Set the npc new move location dialogue box for a person.
//Arguments: person instance

with argument0 {
    //ranx = round(random_range(200, room_width - 200));
    //rany = round(random_range(200, room_height - 200));
   
    ranx = round( x - 150 + random(300) );
    rany = round( x - 150 + random(300) );    
     
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
    //show_debug_message("room dimensions: " + string(room_width) + ", " + string(room_height));
}
