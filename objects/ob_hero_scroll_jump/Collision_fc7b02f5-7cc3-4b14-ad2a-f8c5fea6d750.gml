/// @desc
if speedY>0 
if sc_hero_check_collision_mask(other.id, d.Down) {
	image_xscale = 1
	grav = 0
	speedY = maxspeedYIdle
	maxspeedY = maxspeedYMove
	accelY = accelLo
	instance_change(ob_hero_scroll_stand, false)	
}
	
