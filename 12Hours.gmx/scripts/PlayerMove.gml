//Player movement
//Arguments: none

with reaper {
    if g_bLevelEnding {
        speed = 0
        image_speed = 0
        exit
    }
    
    bKeyDirectionIsPressed = false
    bKeyDirectionIsReleased = false
    
    //Check for new arrow key or WASD presses
    if keyboard_check_pressed(vk_right) or keyboard_check_pressed(ord('D')) {
        keyDirection = RIGHT
        bKeyDirectionIsPressed = true
    }
    else if keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord('W')) {
        keyDirection = UP
        bKeyDirectionIsPressed = true
    }
    else if keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord('A')) {
        keyDirection = LEFT
        bKeyDirectionIsPressed = true
    }
    else if keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord('S')) {
        keyDirection = DOWN
        bKeyDirectionIsPressed = true
    }
    else if speed == 0 {   //No new key has been pressed, but we're stalled.
        //Grab whatever currently-held movement key we can get.
        if keyboard_check(vk_right) or keyboard_check(ord('D')) {
            bKeyDirectionIsPressed = true
            keyDirection = RIGHT
        }
        else if keyboard_check(vk_up) or keyboard_check(ord('W')) {
            bKeyDirectionIsPressed = true
            keyDirection = UP
        }
        else if keyboard_check(vk_left) or keyboard_check(ord('A')) {
            bKeyDirectionIsPressed = true
            keyDirection = LEFT
        }
        else if keyboard_check(vk_down) or keyboard_check(ord('S')) {
            bKeyDirectionIsPressed = true
            keyDirection = DOWN
        }
    }
    
    //Check for arrow key or WASD releases, to deal with movement key clashes.
    if keyboard_check_released(vk_right)
    or keyboard_check_released(vk_up)
    or keyboard_check_released(vk_left)
    or keyboard_check_released(vk_down)
    or keyboard_check_released(ord('D'))
    or keyboard_check_released(ord('W'))
    or keyboard_check_released(ord('A'))
    or keyboard_check_released(ord('S')) {
        bKeyDirectionIsReleased = true
        keyDirection = -1   //Clear direction state
        
        //Grab whatever currently-held movement key we can get.
        if keyboard_check(vk_right) or keyboard_check(ord('D'))
            keyDirection = RIGHT
        else if keyboard_check(vk_up) or keyboard_check(ord('W'))
            keyDirection = UP
        else if keyboard_check(vk_left) or keyboard_check(ord('A'))
            keyDirection = LEFT
        else if keyboard_check(vk_down) or keyboard_check(ord('S'))
            keyDirection = DOWN
    }
    
    //Set speed and direction when key pressed
    if bKeyDirectionIsPressed {
        direction = keyDirection
        speed = REAPER_SPEED
        image_speed = .1   //Start animation
    }
    
    //Set speed and direction when key released
    if bKeyDirectionIsReleased {
        if keyDirection == -1 {
            speed = 0   //Stop if no direction is pressed
            image_speed = 0
        }
        else {
            direction = keyDirection
            speed = REAPER_SPEED
        }
    }
    
    if (bKeyDirectionIsPressed or bKeyDirectionIsReleased) and keyDirection != -1 {
        if direction == RIGHT
            sprite_index = spr_reaperRight
        else if direction == UP
            sprite_index = spr_reaperUp
        else if direction == LEFT
            sprite_index = spr_reaperLeft
        else if direction == DOWN
            sprite_index = spr_reaperDown
    }
    
    
    //Prevent the player from leaving the room
    bLeaving = false
    if bbox_left < 0 {
        bLeaving = true
        do { x += 1 } until bbox_left == 0
    }
    if bbox_right > room_width {
        bLeaving = true
        do { x -= 1 } until bbox_right == room_width
    }
    if bbox_top < 0 {
        bLeaving = true
        do { y += 1 } until bbox_top == 0
    }
    if bbox_bottom > room_height {
        bLeaving = true
        do  { y -= 1 } until bbox_bottom == room_height
    }
    
    if bLeaving
        ShowDialogue(reaper, 'This area is rich in souls.', 2)
    
    
    //---------------------
    //---Prevent collisions
    //---------------------
    
    if place_meeting(x + hspeed, y, citizen)
        speed = 0
    if place_meeting(x, y + vspeed, citizen)
        speed = 0
    
    if place_meeting(x + hspeed, y, block)
        speed = 0
    if place_meeting(x, y + vspeed, block)
        speed = 0
}
