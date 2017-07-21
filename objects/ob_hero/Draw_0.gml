/// @desc Draw debug info

if recover {
	if image_alpha = 0
		image_alpha = 1
	else
		image_alpha = 0	
	draw_self()
} else {
	image_alpha = 1
	draw_self()
}

exit

draw_set_colour(c_red)
mask_index = sp_hero_stand
draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false)

	draw_set_colour(c_lime)
	mask_index = sp_hero_collision_top
	draw_rectangle(bbox_left-dX, bbox_top, bbox_right-dX, bbox_bottom, false)

	mask_index = sp_hero_collision_bottom
	draw_rectangle(bbox_left-dX, bbox_top, bbox_right-dX, bbox_bottom, false)

	mask_index = sp_hero_collision_left
	draw_rectangle(bbox_left, bbox_top-dY, bbox_right, bbox_bottom-dY, false)

	mask_index = sp_hero_collision_right
	draw_rectangle(bbox_left, bbox_top-dY, bbox_right, bbox_bottom-dY, false)
draw_set_colour(c_white)
draw_self()
