speed1 = 0
speed2 = 0
strength = 30
dropvalue = 1000

with instance_create_depth(x, y, depths.explosions, ob_flares) {
	object = other.id
	sparkleLifetime = 0.5
}