/// @desc before death

event_perform_object(ob_hero_scroll_hurt, ev_other, ev_user0)

with ob_game_master
	sc_timeout_start(restartTime)

lives--
image_speed = 0.5
