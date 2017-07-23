/// @desc Process move

if xspread >= 8*scale
	xspread = 8*scale
else
	xspread += dx * dTime

width = xspread * (numcount-1)
_width = width * 0.5

y += speedY * dTime

if sc_timeout_over(lifeTime)
	instance_destroy()
	