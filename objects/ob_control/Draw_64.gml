/// @description  show info

draw_set_color(c_white)
if debugstr != "" {
	draw_text(50, 50, debugstr)
}

draw_text(50, 20, string(fps_real))

