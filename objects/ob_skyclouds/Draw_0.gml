/// @desc
var ii
for (var i=0; i<11; i++) draw_sprite(sprite_index, 2, -(x*dx[2]) mod 32+i*32, y+28+14)
for (var i=0; i<11; i++) draw_sprite(sprite_index, 1, -(x*dx[1]) mod 32+i*32, y+28)
for (var i=0; i<11; i++) draw_sprite(sprite_index, 0, -(x*dx[0]) mod 32+i*32, y)

