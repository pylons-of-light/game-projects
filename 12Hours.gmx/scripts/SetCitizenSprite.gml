//Set the sprite a citizen should use
//Arguments: citizen instance

instance = argument0

with instance {
    if object_get_name(instance.object_index) == 'child' {
        if bMale {
            if direction == RIGHT
                sprite_index = spr_maleChildRight
            if direction == UP
                sprite_index = spr_maleChildUp
            if direction == LEFT
                sprite_index = spr_maleChildLeft
            if direction == DOWN
                sprite_index = spr_maleChildDown
        }
        else {
            if direction == RIGHT
                sprite_index = spr_femaleChildRight
            if direction == UP
                sprite_index = spr_femaleChildUp
            if direction == LEFT
                sprite_index = spr_femaleChildLeft
            if direction == DOWN
                sprite_index = spr_femaleChildDown
        }
    }
    else {
        if bMale {
            if sprite == 0 {
                if direction == RIGHT
                    sprite_index = spr_maleCitizenRight
                if direction == UP
                    sprite_index = spr_maleCitizenUp
                if direction == LEFT
                    sprite_index = spr_maleCitizenLeft
                if direction == DOWN
                    sprite_index = spr_maleCitizenDown
            }
            else {
                if direction == RIGHT
                    sprite_index = spr_maleCitizen2Right
                if direction == UP
                    sprite_index = spr_maleCitizen2Up
                if direction == LEFT
                    sprite_index = spr_maleCitizen2Left
                if direction == DOWN
                    sprite_index = spr_maleCitizen2Down
            }
        }
        else {
            if sprite == 0 {
                if direction == RIGHT
                    sprite_index = spr_femaleCitizenRight
                if direction == UP
                    sprite_index = spr_femaleCitizenUp
                if direction == LEFT
                    sprite_index = spr_femaleCitizenLeft
                if direction == DOWN
                    sprite_index = spr_femaleCitizenDown
            }
            else {
                if direction == RIGHT
                    sprite_index = spr_femaleCitizen2Right
                if direction == UP
                    sprite_index = spr_femaleCitizen2Up
                if direction == LEFT
                    sprite_index = spr_femaleCitizen2Left
                if direction == DOWN
                    sprite_index = spr_femaleCitizen2Down
            }
        }
    }
}
