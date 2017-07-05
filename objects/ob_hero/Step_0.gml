/// @desc Move 

if keys[k.Left] {
	accelX = -accel
}
else
if keys[k.Right] {
	accelX = accel
}
else {
	accelX = 0	
}


event_inherited()
