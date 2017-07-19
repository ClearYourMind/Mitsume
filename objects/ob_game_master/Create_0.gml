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

application_surface_enable(false)

maxChannel = 1

audio_channel_num(maxChannel)
audio_set_master_gain(0, 0.1)

dTime = 0
minFPS = 30

hero = noone

paused = false

counter = 0
totalMaxSpeed = 15 // pix per frame

draw_set_font(fn_default)

view_xborder = camera_get_view_border_x(view_camera[0])
view_yborder = camera_get_view_border_y(view_camera[0])
