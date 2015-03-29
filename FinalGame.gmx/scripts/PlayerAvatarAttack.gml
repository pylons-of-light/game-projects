if not ds_list_empty(g_dlg)
    exit
    
with obj_player{    
    var attackPrototype = spr_attackRight;
    tempXOffset = sprite_width / 2 - sprite_get_width(attackPrototype) / 2;
    tempYOffset = tempXOffset;
    
    if(direction == g_RIGHT){
        tempXOffset += sprite_width / 2 - 20;
        tempYOffset += -10;
        attackSprite = spr_attackRight;
    } else if(direction == g_LEFT) {
        tempXOffset += sprite_width / 2 - 55;
        tempYOffset += -10;
        attackSprite = spr_attackLeft;      
    } else if(direction == g_UP) {
        tempXOffset += sprite_width / 2 - 30;
        tempYOffset += -10;
        attackSprite = spr_attackUp;
    } else if(direction == g_DOWN) {
        tempXOffset += sprite_width / 2 - 30;
        tempYOffset += 10;
        attackSprite = spr_attackDown;    
    }
    
    with instance_create(x + tempXOffset, y + tempYOffset, obj_rapier){
        xOffset = other.tempXOffset;
        yOffset = other.tempYOffset;
        sprite_index = other.attackSprite;
    }
}