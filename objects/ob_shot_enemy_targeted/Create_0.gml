event_inherited()
/// @desc Init values

maxspeedX = 100
maxspeedY = 100

var _d = point_direction(x, y, hero.x, hero.y)
speedX = lengthdir_x(maxspeedX, _d)
speedY = lengthdir_y(maxspeedY, _d)
initiated = true
