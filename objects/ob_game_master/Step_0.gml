/// @desc Set delta_time, move views, timeouts 

dTime = min(delta_time/1000000, 1/minFPS)
counter++

view_x = camera_get_view_x(view_camera[0])
view_y = camera_get_view_y(view_camera[0])

sc_view_follow_hero()

/// room restart timeout
if sc_timeout_is_started(restartTime)
if sc_timeout_over(restartTime) {
	if lives>=0
		room_restart()
	else
		game_end()
}
