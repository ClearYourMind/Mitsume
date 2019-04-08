/// @desc Wave ended
if waveNumber mod 2 = 0 {
	with ob_road {
		instance_change(ob_safehouse, true)
		xx = (x * dx[0]) mod 600 + 1200
	}
} else
	with ob_scroll_wave_control
		alarm_set(0, pauseTime) // pause between waves

