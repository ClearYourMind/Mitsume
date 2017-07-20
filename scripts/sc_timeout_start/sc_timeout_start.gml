///@desc Start countdown from 0 or inittime
///@arg timer id
///@arg zero_start or not

var timer = argument[0]
if not is_array(timer) 
	exit

timer[@ t.started] = true
if argument_count > 1 {
	if argument[1] = true
		timer[@ t.current] = 0
} else
	timer[@ t.current] = timer[t.inittime]

