/// @desc Set sprite

if not initiated {
	if dropvalue>=1000 sprite_index = sp_coin_6 else
	if dropvalue>= 500 sprite_index = sp_coin_5 else
	if dropvalue>= 200 sprite_index = sp_coin_4 else
	if dropvalue>= 100 sprite_index = sp_coin_3 else
	if dropvalue>=  50 sprite_index = sp_coin_2 else
	if dropvalue <  50 sprite_index = sp_coin_1
	
	initiated = true
}
