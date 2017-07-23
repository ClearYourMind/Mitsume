/// @desc Create explosion

with instance_create_depth(x, y, depths.explosions, ob_explode1) {
	dropitem  = other.dropitem
	dropvalue = other.dropvalue
}
