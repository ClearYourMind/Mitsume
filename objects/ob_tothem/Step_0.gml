event_inherited()

event_perform_object(ob_cmpHurtable, ev_step, ev_step_normal)

///@desc Process phases

if instance_exists(base) {
	forward = base.forward
	vulnerable = base.vulnerable
	x = base.x
} else {
	// create ob_tothem_dead
	sprite_index = sp_tothem_idle
	image_speed = 0
	image_index = 0
	image_blend = c_white
	speedX = random(maxspeedX)-maxspeedX*0.5
	instance_change(ob_tothem_dead, false)
	exit
}

if hurt and not (phase = 1) {
	phase = 1
    sprite_index = sp_tothem_fire  
    image_index = 0 
	image_speed = 1
	animEnded = false
}

if phase = 0 {
	image_speed = 0
	if instance_exists(base)
		image_index = base.image_index
}

if phase = 1 {
	if image_index >= 4 and not shotDone {
		with instance_create_depth(x, y+10, depths.shots, ob_shot_enemy_simple)
			forward = other.forward
		shotDone = true
	}
	if animEnded {
		phase = 0
		shotDone = false
		animEnded = false
		sprite_index = sp_tothem_idle
	}
}

image_xscale = forward

