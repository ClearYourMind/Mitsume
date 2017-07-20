event_inherited()
/// @desc Check status & process hurt

if strength<=0
	instance_destroy()

if hurt {
	if _hurtTime > 0
		_hurtTime -= dTime

	if _hurtTime	<= 0 {
		switch hurtstep {
		case 0:
			_hurtTime = hurtTime
			hurtstep=1
			break
		case 1: 
			_hurtTime = 0
			hurt = false
			hurtstep = 0
			image_blend = c_white
			break
		}
	}
}

