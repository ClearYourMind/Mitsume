/// @desc

// Inherit the parent event
event_inherited();

xx = (xx + scrollSpeed * dTime * dx[0])

// slowdown scroll
if (xx < view_w) and (xx > -128) {
	scrollSpeed *= power(0.775, dTime)
	if instance_exists(ob_arrow_scroll)
		ob_arrow_scroll.flare.sparkleSpeedX = scrollSpeed
} else
// speedup scroll
if (xx < -128) and (xx > -600) {
	with ob_scroll_wave_control
		alarm_set(0, pauseTime) // pause between waves
		
	if scrollSpeed > -150 {
		scrollSpeed += -50 * dTime
		if instance_exists(ob_arrow_scroll)
			ob_arrow_scroll.flare.sparkleSpeedX = scrollSpeed
	} else
		scrollSpeed = -150
} else
// destroy safehouse
if xx < -600
	instance_change(ob_road, false)
