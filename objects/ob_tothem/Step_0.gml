event_inherited()

///@desc Process phases

if base.killed {
	sprite_index = sp_tothem_idle
	image_speed = 0
	image_index = 0
	image_blend = c_white;
	speedX = random(maxspeedX)-maxspeedX*0.5
	instance_change(ob_tothem_dead, false)
	exit
}

forward = base.forward
vulnerable = base.vulnerable;

if hurt and not (phase = 1) {
	phase = 1
    sprite_index = sp_tothem_fire  
    image_index = 0 
	image_speed = 1
	animEnded = false
}

if phase = 0 {
	image_speed = 0
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

