/// @desc Init values

dropvalue = 0
dx = 30  // pix per sec
xspread = 0
width = 0
_width = 0
digitSize = 8
digitSprite = sp_gui_number
scale = 1
numcount = 0
numbers = []

speedY = -20

initiated = false
lifeTime = sc_timeout_new(1.5)
sc_timeout_start(lifeTime)
