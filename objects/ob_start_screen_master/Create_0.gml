///@desc Init systems and values
globalvar maxChannel
globalvar counter

globalvar gpButtons

//application_surface_enable(false)
draw_set_font(fn_default)
draw_set_color(c_white)

maxChannel = 2

audio_channel_num(maxChannel)
audio_set_master_gain(0, 0.25)

counter = 0

device = 0
gpNum = -1
gpButtons = [gp_start,	gp_padd,	gp_padl,	gp_padr,	gp_padu,	gp_select,
	 		 gp_face1,	gp_face2,	gp_face3,	gp_face4,
 			 gp_shoulderl, gp_shoulderlb, gp_shoulderr, gp_shoulderrb,
			 gp_stickl, gp_stickr
			]

alarm_set(1, 50)
