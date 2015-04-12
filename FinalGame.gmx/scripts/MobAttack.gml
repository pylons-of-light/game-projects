with argument0
{
    if(canAttack == false)
        exit

    if(attacking == false)
    {
        speed = 0
        attacking = true
        canAttack = false
        alarm[1] = room_speed * attackSpeed
        PlayerTakeDamage(attackDamage)
    }
}
