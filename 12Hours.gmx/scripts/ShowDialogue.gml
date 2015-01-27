//Show dialogue box for a person.
//Arguments: person instance, text, seconds
//person instance must have a 'dialogue' var and 'alarm[0]' must reset that dialogue

with argument0 {
    dialogue = argument1
    alarm[0] = SECOND * argument2
}
