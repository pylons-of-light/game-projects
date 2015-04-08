with argument0{
    if(hp <= 0)
    {
        image_alpha -= .02
        if(iamge_alpha <= 0)
        {
            instance_destroy()   
        }
        exit
    }
}
