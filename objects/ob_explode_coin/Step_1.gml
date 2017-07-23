/// @desc Init caption


if not initiated {
	initiated = true
	
	if dropvalue = 0 {
		instance_destroy()
		exit
	}
// set scale of caption

	if dropvalue>=1000 scale = 1.33 else
	if dropvalue>= 500 scale = 1   else
	if dropvalue>= 200 scale = 0.8 else
	if dropvalue>= 100 scale = 0.6 else
	if dropvalue>=  50 scale = 0.33 else
	if dropvalue <  50 scale = 0.33


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

