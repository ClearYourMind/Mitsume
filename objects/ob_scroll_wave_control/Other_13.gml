/// @desc Approach safehouse

with ob_road {
	instance_change(ob_safehouse, true)
	xx = (x * dx[0]) mod 600 + 1200
}
