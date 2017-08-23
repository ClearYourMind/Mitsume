mask_index = sp_tothem_collision_bottom
if sc_check_collision_mask_wall(other.id, d.Down) 
if (not deploy) and (other.deploy) {
    deploy = true
	speedY = 0
	sc_play_sound(sn_fall2, false)
	instance_create_depth(x, y+8, depths.explosions, ob_smoke)
}

mask_index = sp_tothem_idle

