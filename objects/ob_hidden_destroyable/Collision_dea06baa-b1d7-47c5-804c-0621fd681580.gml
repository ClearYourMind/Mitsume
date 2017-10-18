/// @desc

event_perform_object(ob_cmpHurtable, ev_collision, ob_shot)

with other	
	event_perform(ev_collision, ob_enemy)

if not instance_exists(flare) {
	flare = instance_create_depth(x, y, depths.explosions, ob_flares)
	with flare {
		sparkleSpawnPeriod = 0.1
		flareLifetime = 0.5
		object = other.id
	}
}

if strength<=0
	instance_destroy()
