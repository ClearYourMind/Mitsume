/// @desc

/// draw_rectangle
_x = view_x
_y = view_y+view_h-20

draw_set_colour(c_black)
draw_set_alpha(0.8)
draw_rectangle(_x, _y, _x+view_w, _y+20, false)
draw_set_alpha(1)

event_inherited()
