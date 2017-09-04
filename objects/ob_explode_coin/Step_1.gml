/// @desc Init caption


if not initiated {
	initiated = true
	
	if dropvalue = 0 {
		instance_destroy()
		exit
	}
// set scale of caption

	digitSize = 8
	digitSprite = sp_gui_number
	if dropvalue>=1000 scale = 1.375 else
	if dropvalue>= 500 scale = 1     else
	if dropvalue>= 200 scale = 0.825 else
	if dropvalue>= 100 scale = 0.75  else
	if dropvalue>=  50 {
		scale = 1
		digitSize = 4
		digitSprite= sp_gui_number_small
	} else
	if dropvalue <  50 {
		scale = 1
		digitSize = 4
		digitSprite = sp_gui_number_small
	}


// extract numbers

	numcount = 0

	var i = 0, n = 0, s = dropvalue, pow = 0
	repeat(4) {
	    i++
	    pow = power(10, 4-i)
	    n = s div pow
	    s -= n * pow
	    if numcount = 0 and n = 0 
			continue
        numbers[numcount] = n
        numcount++
	}
	if numcount == 0 {
		instance_destroy()
		exit
	}
	
}

