/// @desc Draw debug info

if recover {
	if image_alpha = 0 
		image_alpha = 1
	else
		image_alpha = 0
} else 
	image_alpha = 1

draw_self()

exit

draw_set_colour(c_red)
mask_index = sp_hero_stand
draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false)

	draw_set_colour(c_lime)
	mask_index = sp_hero_collision_top
	draw_rectangle(bbox_left-hspeed, bbox_top, bbox_right-hspeed, bbox_bottom, false)

	mask_index = sp_hero_collision_bottom
	draw_rectangle(bbox_left-hspeed, bbox_top, bbox_right-hspeed, bbox_bottom, false)

	mask_index = sp_hero_collision_left
	draw_rectangle(bbox_left, bbox_top-vspeed, bbox_right, bbox_bottom-vspeed, false)

	mask_index = sp_hero_collision_right
	draw_rectangle(bbox_left, bbox_top-vspeed, bbox_right, bbox_bottom-vspeed, false)
draw_set_colour(c_white)
draw_self()
