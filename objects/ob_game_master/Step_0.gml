/// @desc Set delta_time, move views, timeouts 

dTime = min(delta_time/1000000, 1/minFPS)
//dTime *= 0.95
//dTime = 0.0333
counter++

sc_view_follow_hero()

/// room restart timeout
if sc_timeout_is_started(restartTime)
if sc_timeout_over(restartTime)
	room_restart()

