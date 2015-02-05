//Set the sprite a citizen should use
//Arguments: citizen instance

instance = argument0;

with instance {
    quad = 1
    
    d = floor(direction)
    
    //right
    if( ( d > 0 and d < 45 ) or ( d > 305 && d < 360 ) )
    {
        quad = 1
    }
    
    //left
    if( ( d > 135 and d < 180 ) or ( d > 180 and d < 225 ) )
    {
        quad = 3
    }
    
    //up
    if ( ( d > 45 and d < 90 ) or ( d > 90 and d < 135 ) )
    {
        quad = 2
    }
    
    //down
    if ( ( d > 225 and d < 270 ) or ( d > 270 and d < 305 ) )
    {
        quad = 4   
    }
    
    if(d == 305 or d == 360 or d == 0 or d == 45)
        quad = 1
    
    if(d == 90)
        quad = 2
    
    if(d == 225 or d == 180 or d == 135)    
        quad = 3
    
    if(d == 270)
        quad = 4
    
    //ShowDialogue(self, string(d) + "-" + string(quad), 1)
    
    //invert for when fleeing
    if(instance.bRunning)
    {
        if(quad == 1)
            quad = 3
        else if(quad == 3)
            quad = 1
        else if(quad == 2)
            quad = 4
        else if(quad == 4)
            quad = 2    
    }
    
    
    if (object_get_name(instance.object_index) == 'child') 
    {
        if (bMale) 
        {
            if (quad == 1)
            {
                sprite_index = spr_maleChildRight
            }
            
            if (quad == 3)
            {
                sprite_index = spr_maleChildLeft
            }
            
            if (quad == 2)
            {
                sprite_index = spr_maleChildUp
            }
            
            if (quad == 4)
            {
                sprite_index = spr_maleChildDown
            }
        }
        else
        {
            if (quad == 1)
            {
                sprite_index = spr_femaleChildRight
            }
            
            if (quad == 3)
            {
                sprite_index = spr_femaleChildLeft
            }
            
            if (quad == 2)
            {
                sprite_index = spr_femaleChildUp
            }
            
            if (quad == 4)
            {
                sprite_index = spr_femaleChildDown
            }        
        }        
    }
    else
    {
        if (bMale) 
        {
            if (quad == 1)
            {
                if (sprite == 0)
                {
                    sprite_index = spr_maleCitizenRight
                }
                else
                {
                    sprite_index = spr_maleCitizen2Right
                }
            }
            else if (quad == 3)
            {
                if (sprite == 0)
                {
                    sprite_index = spr_maleCitizenLeft
                }
                else
                {
                    sprite_index = spr_maleCitizen2Left
                }              
            }
            else if (quad == 2)
            {
                if (sprite == 0)
                {
                    sprite_index = spr_maleCitizenUp
                }
                else
                {
                    sprite_index = spr_maleCitizen2Up
                }
            }
            else if (quad == 4)
            {
                if (sprite == 0)
                {
                    sprite_index = spr_maleCitizenDown
                }
                else
                {
                    sprite_index = spr_maleCitizen2Down
                }                
            }
        }
        else
        {
            if (quad == 1)
            {
                if (sprite == 0)
                {
                    sprite_index = spr_femaleCitizenRight
                }
                else
                {
                    sprite_index = spr_femaleCitizen2Right
                }                
            }
            else if (quad == 3)
            {
                if (sprite == 0)
                {
                    sprite_index = spr_femaleCitizenLeft
                }
                else
                {
                    sprite_index = spr_femaleCitizen2Left
                }                
            }
            else if (quad == 2)
            {
                if (sprite == 0)
                {
                    sprite_index = spr_femaleCitizenUp
                }
                else
                {
                    sprite_index = spr_femaleCitizen2Up
                }                
            }
            else if (quad == 4)
            {
                if (sprite == 0)
                {
                    sprite_index = spr_femaleCitizenDown
                }
                else
                {
                    sprite_index = spr_femaleCitizen2Down   
                }                
            }        
        }
    }       
}
