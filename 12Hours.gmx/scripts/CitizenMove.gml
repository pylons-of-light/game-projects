//Citizen Movement AI
//Arguments: citizen instance

with argument0 {
    //TODO: NPC AI. Note that argument0 is treated as the current instance inside this 'with' block
    
    if distance_to_object(reaper) < 50
        mp_potential_step(reaper.x, reaper.y, -CITIZEN_SPEED, false)
    
    //TODO cowering under certain conditions?
    //note that there's currently no child cower sprite; maybe kids never cower.
    
    //TODO call SetCitizenSprite(self), if 'direction' has changed.
    //TODO set animation to moving or static depending on speed
    //TODO an npc who exits the level should be destroyed, to keep instance_number(citizen) counts low
}
