///@desc Process countdown. Returns true if it is over or stopped
///@arg timer id

var timer = argument0
if not is_array(timer) 
	exit

enum t {
	current  = 0,
	cicled   = 1,
	started  = 2,
	inittime = 3
}

if timer[t.started] {
	timer[@ t.current] -= dTime
	if timer[t.current] <= 0 {
		if timer[t.cicled]	
			timer[@ t.current] = timer[t.inittime]
		else {
			sc_timeout_stop(timer)
		}
		return true
	} return false
} else
	return true

