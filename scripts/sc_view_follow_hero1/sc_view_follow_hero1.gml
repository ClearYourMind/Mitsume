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



view_x = hero.x-view_w*0.5   
view_y = hero.y-view_h*0.5   

camera_set_view_pos(view_camera[0], view_x, view_y)
camera_set_view_size(view_camera[0], view_w, view_h)
camera_set_view_border(view_camera[0], view_xborder, view_yborder)


