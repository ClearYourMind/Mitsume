/// @desc Draw caption

if not initiated exit

var _x = x - _width

for (var i=0; i<numcount; i++) {
    draw_sprite_ext(sp_gui_number, numbers[i], _x + xspread*i, y, scale, scale, 0, -1, 1)
}
