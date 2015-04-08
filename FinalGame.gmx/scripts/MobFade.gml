with argument0{
    if(hp <= 0)
    {
        image_alpha -= .02
        if(image_alpha <= 0)
        {
            instance_destroy()   
        }
        exit
    }
}
