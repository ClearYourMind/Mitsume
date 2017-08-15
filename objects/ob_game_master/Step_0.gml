/// @desc Process global game events

// set dTime (between steps)
if not paused {
	dTime = min(delta_time/1000000, 1/minFPS)
} else
	dTime = 0
	
counter = (counter+1) mod 1000

// move view to follow hero
view_x = camera_get_view_x(view_camera[0])
view_y = camera_get_view_y(view_camera[0])

sc_view_follow_hero()

// deactivate enemies out of view
instance_deactivate_object(ob_enemy)
// deactivate spawners
instance_deactivate_object(ob_spawner)
// deactivate lifts
instance_deactivate_object(ob_lift)
instance_activate_region(view_x - view_w*0.25, view_y - view_h*0.5, 
						 view_w*1.5, view_h*2, true)


// room restart timeout
if sc_timeout_is_started(restartTime)
if sc_timeout_over(restartTime) {
	if lives>=0
		sc_transition_start(sc_action_restart)
	else
		// game over
		sc_transition_start(sc_action_exit_game)
}
