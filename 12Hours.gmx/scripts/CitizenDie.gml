//Set it so that a citizen will die
//Arguments: citizen instance

with argument0 {
    if bDying   //Already dying
        exit
    
    g_health += healthBoost
    if g_health > HEALTH_MAX
        g_health = HEALTH_MAX
    
    //Maybe give the NPC some dying dialogue
    if random(1) < .2
        ShowDialogue(self, dieDialogue[irandom(DIE_DL_MAX)], .3)
    
    bDying = true
    
    //Give the dying NPC time to fade
    alarm[2] = room_speed * .3
}
