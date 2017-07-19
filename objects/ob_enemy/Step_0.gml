event_inherited()
/// @desc Check status & process hurt

if strength<=0
	instance_destroy()

if hurt {
	if _hurtTimeout > 0
		_hurtTimeout -= dTime

	if _hurtTimeout	<= 0 {
		switch hurtstep {
		case 0:
			_hurtTimeout = hurtTimeout
			hurtstep=1
			break
		case 1: 
			_hurtTimeout = 0
			hurt = false
			hurtstep = 0
			image_blend = c_white
			break
		}
	}
}

