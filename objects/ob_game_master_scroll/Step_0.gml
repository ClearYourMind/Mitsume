/// @desc Process global game events

// set dTime (between steps)
if not paused
	dTime = min(delta_time/1000000, 1/minFPS)
else
	dTime = 0
	
counter = (counter+1) mod 100000

// room restart timeout
if sc_timeout_is_started(restartTime)
if sc_timeout_over(restartTime) {
	if lives>=0
		sc_transition_start([noone, sc_action_restart])
	else
		// game over
		sc_transition_start([noone, sc_action_exit_game])
}
