/// @desc Approach safehouse

with ob_road {
	xx = (x * dx[0]) mod 600 + 1200
	instance_change(ob_safehouse, false)
}
