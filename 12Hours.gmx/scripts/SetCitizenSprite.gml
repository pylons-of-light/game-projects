//Set the sprite a citizen should use
//Arguments: citizen instance

instance = argument0;

quad = 1;

with instance {


    if( direction >= 0 and direction <= 90 )
    {
        quad = 1
    }
    
    if( direction >= 90 and direction <= 180 )
    {
        quad = 2
    }
    
    if ( direction >= 180 and direction <= 270 )
    {
        quad = 3
    }
    
    if ( direction >= 270 and direction <= 360)
    {
        quad = 4   
    }
    
    if(quad == 1 || quad == 2)
    {
        if(instance.bRunning)
        {
            quad = 4
        }
    }
    else if(quad == 3 || quad == 4)
    {
        if(instance.bRunning)
        {
            quad = 1
        }   
    }
    
    
    if (object_get_name(instance.object_index) == 'child') 
    {
        if (bMale) 
        {
            if (quad == 1 || quad == 4)
            {
                sprite_index = spr_maleChildRight
            }
            
            if (quad == 2 || quad == 3)
            {
                sprite_index = spr_maleChildLeft
            }
            
            if (quad == 1 || quad == 2)
            {
                sprite_index = spr_maleChildUp
            }
            
            if (quad == 3 || quad == 4)
            {
                sprite_index = spr_maleChildDown
            }
        }
        else
        {
            if (quad == 1 || quad == 4)
            {
                sprite_index = spr_femaleChildRight
            }
            
            if (quad == 2 || quad == 3)
            {
                sprite_index = spr_femaleChildLeft
            }
            
            if (quad == 1 || quad == 2)
            {
                sprite_index = spr_femaleChildUp
            }
            
            if (quad == 3 || quad == 4)
            {
                sprite_index = spr_femaleChildDown
            }        
        }        
    }
    else
    {
        if (bMale) 
        {
            if (quad == 1 || quad == 4)
            {
                sprite_index = spr_maleCitizenRight
            }
            
            if (quad == 2 || quad == 3)
            {
                sprite_index = spr_maleCitizenLeft
            }
            
            if (quad == 1 || quad == 2)
            {
                sprite_index = spr_maleCitizenUp
            }
            
            if (quad == 3 || quad == 4)
            {
                sprite_index = spr_maleCitizenDown
            }
        }
        else
        {
            if (quad == 1 || quad == 4)
            {
                sprite_index = spr_femaleCitizenRight
            }
            
            if (quad == 2 || quad == 3)
            {
                sprite_index = spr_femaleCitizenLeft
            }
            
            if (quad == 1 || quad == 2)
            {
                sprite_index = spr_femaleCitizenUp
            }
            
            if (quad == 3 || quad == 4)
            {
                sprite_index = spr_femaleCitizenDown
            }        
        }
    }       
}