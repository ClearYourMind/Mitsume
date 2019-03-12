/// @desc to platform mode

instance_change(ob_hero, false)
grav = 800  // weight
oStopFactor = 5 * power(10, -7)

idleAnim = sp_hero_stand
idleTime = sc_timeout_new(5, true)
idle = false

arrowObject = ob_arrow

accel = 350
maxspeedX = 85
maxspeedY = 400

with ob_arrow_scroll {
	flare.spawn = false;
	image_angle = 0

	instance_change(ob_arrow, true)
	phase = ar.Stay;
}

with ob_safehouse
	phase = sf.platformSlowdown

with hiddenWalls
	event_perform(ev_other, ev_user0) // activate hidden


