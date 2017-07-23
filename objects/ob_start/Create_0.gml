/// @desc Init systems and values
globalvar maxChannel
globalvar counter

application_surface_enable(false)

maxChannel = 2

audio_channel_num(maxChannel)
audio_set_master_gain(0, 0.25)

counter = 0

cursorPos[0] = [ 25, 100]
cursorPos[1] = [125, 100]
currentPos = 0
cursorVisible = false
maxPos = 1

alarm[1] = 50

