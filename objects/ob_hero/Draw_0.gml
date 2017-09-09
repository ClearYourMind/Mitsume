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
draw_set_alpha(0.75)

image_xscale = 1
var masks = [sp_hero_collision_top, sp_hero_collision_bottom, sp_hero_collision_left, sp_hero_collision_right]
for (var i=0; i<4; i++) {
	mask_index = masks[i]
	w1 = round(x - bbox_left)
	w2 = round(bbox_right  - x)
	h1 = round(y - bbox_top)
	h2 = round(bbox_bottom - y)
	draw_rectangle(x-w1, y-h1, x+w2, y+h2, false)
}
image_xscale = forward
mask_index = sp_hero_stand
draw_set_alpha(1)
draw_set_colour(c_white)
