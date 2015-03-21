//Called by a NPC ship when they want to try firing in an adjacent player ship

if current_time - cbFireDelay < lastFiredTime
    exit

var nearest, aimDir, left, right;
nearest = instance_nearest(x, y, playerShip)
aimDir = point_direction(x, y, nearest.x, nearest.y)

left = direction - 90
if left < 0
    left += 360
right = direction + 90
if right >= 360
    right -= 360

var leftDiff = abs(aimDir - left)
if leftDiff > 180
    leftDiff = 360 - leftDiff

var rightDiff = abs(aimDir - right)
if rightDiff > 180
    rightDiff = 360 - rightDiff

if leftDiff < 10 and leftDiff < rightDiff
    aimDir = left
else if rightDiff < 10 and rightDiff < leftDiff
    aimDir = right
else
    exit

//show_message(string(direction) + " " + string(left) + " " + string(right))

cb1 = instance_create(x + lengthdir_x(25, direction), y + lengthdir_y(25, direction), cannonball)
cb1.direction = aimDir - 5
cb1.speed = cbSpeed
cb1.sourceShip = id
cb1.damage = dealCannonDamage
cb1.alarm[0] = cbFlyTime

cb2 = instance_create(x, y, cannonball)
cb2.direction = aimDir
cb2.speed = cbSpeed
cb2.sourceShip = id
cb2.damage = dealCannonDamage
cb2.alarm[0] = cbFlyTime

cb3 = instance_create(x + lengthdir_x(25, direction-180), y + lengthdir_y(25, direction-180), cannonball)
cb3.direction = aimDir + 5
cb3.speed = cbSpeed
cb3.sourceShip = id
cb3.damage = dealCannonDamage
cb3.alarm[0] = cbFlyTime

lastFiredTime = current_time
bTurningToFire = false   //Do this regardless of whether we were actually turning to fire or not.
