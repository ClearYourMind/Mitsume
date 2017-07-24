/// @desc

var pos = cursorPos[currentPos]

if counter mod 20 = 0 
	cursorVisible = not cursorVisible

if cursorVisible
	draw_sprite(sp_menu_arrow, 0, pos[0], pos[1])

var pos = cursorPos[0]
draw_text(pos[0]+15, pos[1], "KEYBOARD")

var pos = cursorPos[1]
draw_text(pos[0]+15, pos[1], "GAMEPAD")

