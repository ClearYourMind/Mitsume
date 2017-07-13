/// @description  show info

draw_set_color(c_white)
if debugstr != "" {
	draw_text(15, 50, debugstr)
}

draw_set_color(c_black)
draw_rectangle(0,0,150,80, false)

draw_set_color(c_white)
draw_text(15, 10, string(fps_real))
draw_text(15, 20, string_format(dTime, 1, 4))

