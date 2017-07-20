///@desc Stop timer
///@arg timer id

var timer = argument0
if not is_array(timer) 
	exit

timer[@ t.started] = false
timer[@ t.current] = 0

