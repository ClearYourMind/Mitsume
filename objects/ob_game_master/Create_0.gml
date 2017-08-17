/// @desc Init values

globalvar dTime
globalvar minFPS
globalvar hero
globalvar paused
globalvar totalMaxSpeed
globalvar debugstr

globalvar view_x
globalvar view_y
globalvar view_w
globalvar view_h
globalvar view_xborder
globalvar view_yborder

enum depths {
	explosions = -2,
	shots = -1,
	general = 0,
	gui = -3,
	fadeplane = -5	
}

dTime = 0
minFPS = 30

hero = noone
lives  = 2
score = 0

paused = false

totalMaxSpeed = 15 // pix per frame
debugstr = ""

draw_set_font(fn_default)

view_xborder = camera_get_view_border_x(view_camera[0])
view_yborder = camera_get_view_border_y(view_camera[0])
view_w = camera_get_view_width (view_camera[0])
view_h = camera_get_view_height(view_camera[0])

restartTime = sc_timeout_new(1.5)

gameStarted = false
