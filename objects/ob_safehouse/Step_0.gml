/// @desc

// Inherit the parent event
event_inherited();

xx = (xx + scrollSpeed * dTime * dx[0])

switch phase {
case sf.none:
	if (xx < view_w)
		phase = sf.scrollSlowdown
	break
case sf.scrollSlowdown:
	scrollSpeed *= power(0.775, dTime)

	with ob_arrow_scroll
		flare.sparkleSpeedX = scrollSpeed
	
	if (xx < -128)
		phase = sf.scrollSpeedup
	break
case sf.scrollSpeedup:
	with ob_scroll_wave_control
		alarm_set(0, pauseTime) // pause between waves
	if scrollSpeed > -150 {
		scrollSpeed += -50 * dTime
		with ob_arrow_scroll
			flare.sparkleSpeedX = scrollSpeed
	} else
		scrollSpeed = -150
		
	// destroy safehouse
	if (xx < -600) {
		instance_change(ob_road, true)
		shopVisited = false
	}
	break
case sf.platformSlowdown:
	if abs(scrollSpeed) > 2 {
		scrollSpeed += 80 * dTime
	} else {
		scrollSpeed = 0
	}
	break
}
