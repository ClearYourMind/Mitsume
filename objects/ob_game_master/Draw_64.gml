/// @description  show info

draw_set_color(c_white)
if debugstr != "" {
	draw_text(50, 50, debugstr)
}

draw_set_color(c_black)
draw_text(50, 20, string(fps_real))
draw_set_color(c_white)
draw_text(51, 21, string(fps_real))

