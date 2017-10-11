/// @desc Deactivate instances out of sight

// deactivate enemies out of view
instance_deactivate_object(ob_enemy)
// deactivate spawners
instance_deactivate_object(ob_spawner)
// deactivate lifts
instance_deactivate_object(ob_lift)

instance_activate_region(view_x - view_w*0.5, view_y - view_h*0.5, 
						 view_w*2, view_h*2, true)

alarm_set(0, deactivateTime)
