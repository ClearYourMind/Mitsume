/// @desc Init values

globalvar maxChannel
globalvar dTime
globalvar minFPS
globalvar hero
globalvar paused
globalvar counter
globalvar totalMaxSpeed

application_surface_enable(false)

maxChannel = 64

audio_channel_num(maxChannel)
audio_set_master_gain(0, 0.1)

dTime = 0
minFPS = 20

hero = noone

paused = false

counter = 0
totalMaxSpeed = 15 // pix per frame


