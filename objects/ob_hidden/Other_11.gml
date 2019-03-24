/// @desc Deactivate hidden objects

// sync deactivation timers
with ob_hidden
	alarm_set(0, deactivateTime)
with ob_game_master 
	alarm_set(0, deactivateTime)
	
activated = false

event_perform(ev_alarm, 0)
