/// @desc Destroy shot
// "if other.speedY > 0" is never true for this event
// is called from ob_coin

if other.speedY > 0
	instance_destroy()
