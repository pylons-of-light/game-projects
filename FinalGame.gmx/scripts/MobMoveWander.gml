with argument0
{
    if(wander != true)
        exit
          
    speed = walkSpeed    
    image_speed = mobImageSpeed
    
    alarm[11]++
    
    //change wander direction every 5 seconds
    if(alarm[11] >= (room_speed * 5))
        SetMobWanderLocation(self)
    
    //change wander direction if close to a collider
    if(distance_to_object(obj_collider) < 25)    
        SetMobWanderLocation(self)
        
    //change wander direction if collision occurs
    if(place_meeting(x + hspeed, y, obj_collider) || place_meeting(x, y + vspeed, obj_collider))
        SetMobWanderLocation(self)      
}
