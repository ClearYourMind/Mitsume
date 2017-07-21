/// @desc Init values

globalvar maxChannel
globalvar dTime
globalvar minFPS
globalvar hero
globalvar paused
globalvar counter
globalvar totalMaxSpeed
globalvar debugstr

globalvar view_x
globalvar view_y
globalvar view_w
globalvar view_h
globalvar view_xborder
globalvar view_yborder

enum depths {
	explosions = -1,
	shots = -1,
	general = 0
}

application_surface_enable(false)

maxChannel = 2

audio_channel_num(maxChannel)
audio_set_master_gain(0, 0.25)

dTime = 0
minFPS = 30

hero = noone

paused = false

counter = 0
totalMaxSpeed = 15 // pix per frame

draw_set_font(fn_default)

view_xborder = camera_get_view_border_x(view_camera[0])
view_yborder = camera_get_view_border_y(view_camera[0])
view_w = camera_get_view_width (view_camera[0])
view_h = camera_get_view_height(view_camera[0])

restartTime = sc_timeout_new(4)
