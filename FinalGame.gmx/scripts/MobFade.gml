with argument0{
    if(hp <= 0)
    {
        image_alpha -= .02
        if(image_alpha <= 0)
        {
            if(random(1) <= POTION_DROP_RATE)
                instance_create(x+POTION_OFFSET, y+POTION_OFFSET, potionDrop)
            instance_destroy()   
        }
        exit
    }
}
