event_inherited()
/// @desc Fall and Rise

if paused
	exit
	
if collisionResult[1] {
	switch phase {
	case 0:
		grav = 0
		speedY = 0
		sc_timeout_start(waitTime)
			// shake screen
			with ob_shake_master event_perform(ev_other, ev_user0)
		sc_play_sound(sn_hit3)
		break
	case 1:
		speedY = 0
		sc_timeout_start(waitTime)
		break
	}
}

if sc_timeout_is_started(waitTime) and sc_timeout_over(waitTime) {
	switch phase {
	case 0:
		speedY = -maxspeedY * 0.1
		phase = 1
		sc_timeout_stop(waitTime)
		break
	case 1:
		grav = oGrav
		phase = 0
		sc_timeout_stop(waitTime)
		break
	}
}

if not sc_timeout_is_started(waitTime)
if phase == 1
	if not audio_is_playing(sn_lift2)
		sc_play_sound(sn_lift2)

