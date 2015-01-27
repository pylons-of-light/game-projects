//Get the sprite a citizen should use
//Arguments: bMale, citizen sprite index, dir
//TODO maybe remove this function; SetCitizenSprite usurps it

bMale = argument0
sprite = argument1
dir = argument2

if object_get_name(obj) == "child" {
    if bMale {
        if direction == RIGHT
            return spr_maleChildRight
        if direction == UP
            return spr_maleChildUp
        if direction == LEFT
            return spr_maleChildLeft
        if direction == DOWN
            return spr_maleChildDown
    }
    else {
        if direction == RIGHT
            return spr_femaleChildRight
        if direction == UP
            return spr_femaleChildUp
        if direction == LEFT
            return spr_femaleChildLeft
        if direction == DOWN
            return spr_femaleChildDown
    }
}
else {
    if bMale {
        if sprite == 0 {
            if dir == RIGHT
                return spr_maleCitizenRight
            if dir == UP
                return spr_maleCitizenUp
            if dir == LEFT
                return spr_maleCitizenLeft
            if dir == DOWN
                return spr_maleCitizenDown
        }
        else {
            if dir == RIGHT
                return spr_maleCitizen2Right
            if dir == UP
                return spr_maleCitizen2Up
            if dir == LEFT
                return spr_maleCitizen2Left
            if dir == DOWN
                return spr_maleCitizen2Down
        }
    }
    else {
        if sprite == 0 {
            if dir == RIGHT
                return spr_femaleCitizenRight
            if dir == UP
                return spr_femaleCitizenUp
            if dir == LEFT
                return spr_femaleCitizenLeft
            if dir == DOWN
                return spr_femaleCitizenDown
        }
        else {
            if dir == RIGHT
                return spr_femaleCitizen2Right
            if dir == UP
                return spr_femaleCitizen2Up
            if dir == LEFT
                return spr_femaleCitizen2Left
            if dir == DOWN
                return spr_femaleCitizen2Down
        }
    }
}
