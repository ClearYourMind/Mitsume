/// @desc

// Inherit the parent event
event_inherited();

// move arrow
var dist = point_distance(x, y, hero.x, hero.y)*50

image_angle += dist*0.5 * dTime

if hero.hurt {
	accelX = lengthdir_x(dist, point_direction(x,y,hero.x, hero.y+20))
	accelY = lengthdir_y(dist, point_direction(x,y,hero.x, hero.y+20))
} else {
	speedX = lengthdir_x(maxspeed, point_direction(x,y,hero.x, hero.y+20))
	speedY = lengthdir_y(maxspeed, point_direction(x,y,hero.x, hero.y+20))
}
