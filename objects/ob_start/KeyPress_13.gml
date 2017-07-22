/// @desc 

sc_play_sound(sn_select3, false)

switch currentPos {
case 0:
	instance_create_depth(0,0,0, ob_control) 
	break
case 1:
	instance_create_depth(0,0,0, ob_gamepad_control)
}

alarm_set(0, 25)
