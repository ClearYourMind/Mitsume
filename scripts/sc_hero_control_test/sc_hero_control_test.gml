/// @desc Keys

var spd = 50;

if keys[k.Left]
	speedX = -spd

if keys[k.Right]
	speedX = spd
	
if keys[k.Up]
	speedY = -spd
	
if keys[k.Down]
	speedY = spd

if keys[k.Fire] {
	speedX = 0	
	speedY = 0
}

//grav = oGrav
