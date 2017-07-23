/// @desc Raise value

if speedY > 0 {
    speedY = -maxspeedY * 0.75
    speedX = 0
    dropvalue += dropvalue * 0.01 * 15//%
    if dropvalue>9999 dropvalue = 5
	
	sc_play_sound(sn_coin2, false)
	initiated = false
} else exit   


