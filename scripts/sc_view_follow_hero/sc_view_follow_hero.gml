// @desc Move view to follow hero

if not instance_exists(hero)
	exit

var moveSpeed = 100 * dTime

var view_x = camera_get_view_x(view_camera[0])
var view_y = camera_get_view_y(view_camera[0])
var view_w = camera_get_view_width (view_camera[0])
var view_h = camera_get_view_height(view_camera[0])
var view_xborder = camera_get_view_border_x(view_camera[0])
var view_yborder = camera_get_view_border_y(view_camera[0])



var dx = hero.x - ((view_x + view_w) - view_xborder)
var dy = hero.y - ((view_y + view_h) - view_yborder)

if dx > 0
   view_x += dx 
   
if hero.feetcollision   
if dy > 0
   view_y += min(dy, moveSpeed)
   
var dx = hero.x - (view_x + view_xborder)
var dy = hero.y - (view_y + view_yborder)

if dx < 0
   view_x -= abs(dx) 
   
if hero.feetcollision   
if dy < 0
   view_y -= min(abs(dy), moveSpeed)
   
if view_x < 0 view_x = 0   
if view_y < 0 view_y = 0   

if view_x + view_w > room_width
   view_x = room_width - view_w
if view_y + view_h > room_height
   view_y = room_height - view_h
   

camera_set_view_pos(view_camera[0], view_x, view_y)
camera_set_view_size(view_camera[0], view_w, view_h)
camera_set_view_border(view_camera[0], view_xborder, view_yborder)


