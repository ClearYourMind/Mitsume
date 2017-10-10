/// @desc

strength -= other.hit
with other instance_destroy()

with instance_create_depth(x, y, depths.explosions, ob_flares) {
	sparkleSpawnPeriod = 0.1
	flareLifetime = 0.5
	object = other.id
}
sc_play_sound(sn_hit)

if strength<=0
	instance_destroy()
	