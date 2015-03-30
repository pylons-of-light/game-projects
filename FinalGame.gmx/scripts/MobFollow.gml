with argument0
{
    //face the player
    //direction = point_direction(x, y, obj_player.x, obj_player.y)
    
    image_speed = mobImageSpeed
    
    //move towards player
    mp_potential_step(obj_player.x, obj_player.y, walkSpeed, false)
}
