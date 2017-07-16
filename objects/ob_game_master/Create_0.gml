/// @desc Init values

globalvar maxChannel
globalvar dTime
globalvar minFPS
globalvar hero
globalvar paused
globalvar counter
globalvar totalMaxSpeed
globalvar debugstr

application_surface_enable(false)

maxChannel = 64

audio_channel_num(maxChannel)
audio_set_master_gain(0, 0.1)

dTime = 0
minFPS = 30

hero = noone

paused = false

counter = 0
totalMaxSpeed = 15 // pix per frame


draw_set_font(fn_default)