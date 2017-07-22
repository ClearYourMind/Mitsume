event_inherited()
/// @desc Update elements

if not instance_exists(hero)
	exit

var n = 0

// health
var _x = 15
var _y = 0
var elem = []
elem[el.pos   ] = [_x, _y]
elem[el.sprite] = sp_gui_health
elem[el.index ] = 0
ob_gui.element[n++] = elem

repeat health {
	_x+=8
	elem = []
	elem[el.pos   ] = [_x, _y]
	elem[el.sprite] = sp_gui_health
	elem[el.index ] = 1
	ob_gui.element[n++] = elem
}
repeat (hero.maxhealth - health) {      
	_x+=8
	elem = []
	elem[el.pos   ] = [_x, _y]
	elem[el.sprite] = sp_gui_health
	elem[el.index ] = 2
	ob_gui.element[n++] = elem
}
_x+=8
elem = []
elem[el.pos   ] = [_x, _y]
elem[el.sprite] = sp_gui_health
elem[el.index ] = 3
ob_gui.element[n++] = elem


//score
_x+=36
var i = 0, number = 0, s = score, pow = 0
repeat(6) {
    i++
    pow = power(10, 6-i)
    number = s div pow
    s -= number * pow
	elem = []
	elem[el.pos   ] = [_x + 8*i, _y]
	elem[el.sprite] = sp_gui_number
	elem[el.index ] = number
	ob_gui.element[n++] = elem
}


ob_gui.elementCount = n

