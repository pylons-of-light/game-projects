bMale = argument0
sprite = argument1
dir = argument2

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
