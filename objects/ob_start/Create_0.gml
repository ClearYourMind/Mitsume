/// @desc Init systems and values
globalvar maxChannel
globalvar counter

application_surface_enable(false)
draw_set_font(fn_default)
draw_set_color(c_white)

maxChannel = 2

audio_channel_num(maxChannel)
audio_set_master_gain(0, 0.25)

counter = 0

cursorPos[0] = [ 25, 100]
cursorPos[1] = [125, 100]
currentPos = 0
cursorVisible = false
maxPos = 1

gpNum = 0

alarm[1] = 50

