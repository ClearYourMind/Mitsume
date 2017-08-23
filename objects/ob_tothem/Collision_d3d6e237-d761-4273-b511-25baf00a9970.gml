mask_index = sp_tothem_collision_bottom
if not deploy{
	deploy = true
	speedY = 0
	grav = 0
	y = other.y
	sc_play_sound(sn_fall2, false)
	instance_create_depth(x, y+8, depths.explosions, ob_smoke)
}

mask_index = sp_tothem_idle
