/// @desc Process timer and spawn

if sc_timeout_is_started(spawnTime)
if sc_timeout_over(spawnTime) {
	if spawnAllowed
		event_perform(ev_other, ev_user0) // Spawn
	
	if spawnLoop {
		spawnTime = sc_timeout_new(spawnPeriod + random(spawnPeriodSpread * 2)-spawnPeriodSpread)
		sc_timeout_start(spawnTime)
	}

}

/// Check spawner is outside
spawnAllowed = (
	point_in_rectangle(x   , y, view_x, view_y, view_x+view_w, view_y+view_h) or
	point_in_rectangle(x+w2, y, view_x, view_y, view_x+view_w, view_y+view_h) or
	point_in_rectangle(x-w1, y, view_x, view_y, view_x+view_w, view_y+view_h)
) or spawnOutside
