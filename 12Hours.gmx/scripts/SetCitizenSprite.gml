//Set the sprite a citizen should use
//Arguments: citizen object

obj = argument0

with obj {
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