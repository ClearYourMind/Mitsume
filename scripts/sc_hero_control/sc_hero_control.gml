/// @desc ob_hero control implementation

var animType = sp_hero_stand

canJump = feetcollision

// Кнопки
if keys[k.Left] {
    forward = -1
    accelX = accel * forward
    animType = sp_hero_move
} 
if keys[k.Right] {
    forward = 1
    accelX = accel * forward
    animType = sp_hero_move
} 
if keys[k.Jump] {
    if canJump { 
        speedY = -jumpSpeed
        animType = sp_hero_jump
        _jumpTime = jumpTime
        canJump = false
        sc_play_sound(sn_jump, false)
	}    
    if _jumpTime > 0 {
        _jumpTime -= dTime
        speedY = -jumpSpeed
    }
} else {
	canJump = true
}  
    
if (abs(speedY) > 0) or (feetcollision == false) {
    animType = sp_hero_jump
    speedY += grav
}

//if keys[k.Fire] {
//   if feetcollision
//     animType = sp_hero_fire
//   else
//     animType = sp_hero_jumpfire
//   if canShoot {
//      with instance_create_depth(x, y-7, 0, weapon) {
//         forward = other.forward
//         other.alarm[1] = reloadtime    // set reload to player
//      }
//      canShoot = false
//   }  
   
//} else canShoot = true

if (not (keys[k.Left] or keys[k.Right]) or keys[k.Fire] or keys[k.altFire]) and feetcollision {
    accelX = 0
}  

image_xscale = forward
if sprite_index != animType {
	sprite_index = animType
	image_index = 0
}

