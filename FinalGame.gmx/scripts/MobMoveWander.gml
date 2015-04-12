if not ds_list_empty(g_dlg) or instance_exists(tutorialMgr)
    exit

with argument0
{
    if(wander != true)
        exit
          
    speed = walkSpeed    
    image_speed = mobImageSpeed
    
    alarm[11]++
    
    //change wander direction every 3 seconds
    if(alarm[11] >= (room_speed * 3))
    {
        SetMobWanderLocation(self)
    }
    
    //change wander direction if close to a collider
    if(distance_to_object(obj_collider) <= 25)    
    {
        if(avoidWall == true)
        {   
            avoidWall = false
            alarm[10] = room_speed * 1
            SetMobAvoidWall(self)
        }
    }
       
    /*
    //change wander direction if collision occurs
    if(place_meeting(x + hspeed, y, obj_collider) || place_meeting(x, y + vspeed, obj_collider))
    {   
        SetMobWanderLocation(self)      
    }
    */
}
