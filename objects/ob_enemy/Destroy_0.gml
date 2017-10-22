/// @desc Create explosion

with instance_create_depth(x, y, depths.explosions, deathExplosion) {
	dropitem  = other.dropitem
	dropvalue = other.dropvalue
}
