with argument0
{
    //check vicinity to player
    if(aggro == false)
    {
        if(distance_to_object(obj_player) < aggroRange)
        {
            speed = 0  
            image_speed = 0
            
            //set aggro flag
            aggro = true
            //stop wandering
            wander = false
        }
    }
    else
    {
        if(distance_to_object(obj_player) >= aggroRange * 3)
        {
            //lose aggro
            aggro = false
            //start wandering again
            wander = true
        }        
        
        if(distance_to_object(obj_player) > attackRange)
        {
            MobFollow(self)
        }
        else if(distance_to_object(obj_player) <= attackRange)
        {
            MobAttack(self)
        }
    }
}
