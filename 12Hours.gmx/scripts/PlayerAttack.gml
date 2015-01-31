//Player signals the intention to attack
//Arguments: none

with reaper {
    var slashPrototype = spr_slashRight   //Arbitrary choice; we need something to get dimensions from
    tempXOffset = sprite_width/2 - sprite_get_width(slashPrototype)/2
    tempYOffset = sprite_height/2 - sprite_get_height(slashPrototype)/2
    
    if direction == RIGHT {
        tempXOffset += sprite_width / 2 - 15   //Note arbitrary adjustment
        tempYOffset += 15   //Help make it look like the slash is wrapping around the reaper's body
        slashSprite = spr_slashRight
    }
    else if direction == UP {
        tempXOffset += 10
        tempYOffset -= sprite_height / 2 - 25   //Slightly different arbitrary adjustment
        slashSprite = spr_slashUp
    }
    else if direction == LEFT {
        tempXOffset -= sprite_width / 2 - 10
        tempYOffset -= 10
        slashSprite = spr_slashLeft
    }
    else if direction == DOWN {
        tempXOffset -= 10
        tempYOffset += sprite_height / 2 - 20
        slashSprite = spr_slashDown
    }
    
    with instance_create(x + tempXOffset, y + tempYOffset, slash) {
        xOffset = other.tempXOffset
        yOffset = other.tempYOffset
        sprite_index = other.slashSprite
    }
}
