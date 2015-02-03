//Set the sprite a citizen should use
//Arguments: citizen instance

instance = argument0;

with instance {
    if (object_get_name(instance.object_index) == 'child') 
    {
        if (bMale) 
        {
            if (direction == RIGHT)
            {
                sprite_index = spr_maleChildRight
            }
            else if (direction == LEFT)
            {
                sprite_index = spr_maleChildLeft
            }
            else if (direction == UP)
            {
                sprite_index = spr_maleChildUp
            }
            else if (direction == DOWN)
            {
                sprite_index = spr_maleChildDown
            }
        }
        else
        {
            if (direction == RIGHT)
            {
                sprite_index = spr_femaleChildRight
            }
            else if (direction == LEFT)
            {
                sprite_index = spr_femaleChildLeft
            }
            else if (direction == UP)
            {
                sprite_index = spr_femaleChildUp
            }
            else if (direction == DOWN)
            {
                sprite_index = spr_femaleChildDown
            }        
        }        
    }
    else
    {
        if (bMale) 
        {
            if (direction == RIGHT)
            {
                sprite_index = spr_maleCitizenRight
            }
            else if (direction == LEFT)
            {
                sprite_index = spr_maleCitizenLeft
            }
            else if (direction == UP)
            {
                sprite_index = spr_maleCitizenUp
            }
            else if (direction == DOWN)
            {
                sprite_index = spr_maleCitizenDown
            }
        }
        else
        {
            if (direction == RIGHT)
            {
                sprite_index = spr_femaleCitizenRight
            }
            else if (direction == LEFT)
            {
                sprite_index = spr_femaleCitizenLeft
            }
            else if (direction == UP)
            {
                sprite_index = spr_femaleCitizenUp
            }
            else if (direction == DOWN)
            {
                sprite_index = spr_femaleCitizenDown
            }        
        }
    }       
}
