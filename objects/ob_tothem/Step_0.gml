event_inherited()

///@desc Process phases

forward = base.forward
if base.killed {
    deploy = false
} 

if hurt = true and not (phase = th.fire) {
	phase = th.fire
    sprite_index = sp_tothem_fire  
    image_index = 0 
	image_speed = 0.1
	animEnded = false
}

if phase = th.idle {
	image_speed = 0
	image_index = base.image_index
}

if phase = th.fire {
	if image_index >= 4 and image_index<4+image_speed {
		with instance_create_depth(x, y, depths.shots, ob_shot_enemy_simple)
			forward = other.forward
	}
	if animEnded {
		phase = th.idle
		animEnded = false
		sprite_index = sp_tothem_idle
	}
}

image_xscale = forward
