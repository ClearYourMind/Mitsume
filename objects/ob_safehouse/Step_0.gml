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
	if instance_exists(flare)
		flare.sparkleSpeedX = scrollSpeed
	
	if (xx < -128)
		phase = sf.scrollSpeedup
	break
	
case sf.scrollSpeedup:
	if scrollSpeed > maxScrollSpeed {
		scrollSpeed += -50 * dTime
		with ob_arrow_scroll
		if instance_exists(flare)
			flare.sparkleSpeedX = scrollSpeed
	} else
		scrollSpeed = maxScrollSpeed
		
	// destroy safehouse
	if (xx < -600) {
		instance_change(ob_road, true)
		shopVisited = false
		with ob_scroll_wave_control
			alarm_set(0, pauseTime) // pause between waves
	}
	break
	
case sf.platformSlowdown:
	if abs(scrollSpeed) > 2 {
		scrollSpeed += 80 * dTime
	} else {
		scrollSpeed = 0
	}
	
	with ob_finish {
		x = other.xx + 332
		y = other.y  - 21
	}
	break
}
