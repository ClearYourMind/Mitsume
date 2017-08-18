/// @description  show info
//exit

draw_set_color(c_black)
draw_rectangle(0,0,200,100, false)

draw_set_color(c_white)
draw_text(15, 4, string(fps_real))
draw_text(15, 14, string_format(dTime, 1, 4))
if debugstr != "" {
	draw_text(15, 24, debugstr)
}

