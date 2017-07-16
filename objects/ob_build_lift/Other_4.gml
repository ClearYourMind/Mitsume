/// @desc Create actual lift

with instance_create_depth(x, y, 0, ob_lift_v) {
	minPos = other.bbox_top    - y
	maxPos = other.bbox_bottom - y
	initPos = y
	speedY = other.moveSpeed
}
