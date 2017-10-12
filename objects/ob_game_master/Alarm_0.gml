/// @desc Deactivate instances out of sight

// deactivate objects out of view
with instance_number(ob_enemy)
	if instance_exists(id)
		instance_deactivate_object(id)
	else
		show_message("WHAT?!")
	
with instance_number(ob_spawner)
	if instance_exists(id)
		instance_deactivate_object(id)
	else
		show_message("WHAT?!")
	
with instance_number(ob_lift)
	if instance_exists(id)
		instance_deactivate_object(id)
	else
		show_message("WHAT?!")
	
//instance_deactivate_object(ob_enemy)
//instance_deactivate_object(ob_spawner)
//instance_deactivate_object(ob_lift)

var deactivateBoundaryX = view_w * 0.5
var deactivateBoundaryY = view_h * 0.5

instance_activate_region(view_x - deactivateBoundaryX  , view_y - deactivateBoundaryY, 
						 view_w + deactivateBoundaryX*2, view_h + deactivateBoundaryY*2, true)
						 
alarm_set(0, deactivateTime)
