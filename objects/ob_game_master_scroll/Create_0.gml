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

globalvar deactivateTime;

dTime = 0
minFPS = 30

hero = noone
lives  = 2
score = 00000

paused = false

totalMaxSpeed = 15 // pix per frame
debugstr = ""

deactivateTime = 20

restartTime = sc_timeout_new(1.5)

gameStarted = false
debug = false
