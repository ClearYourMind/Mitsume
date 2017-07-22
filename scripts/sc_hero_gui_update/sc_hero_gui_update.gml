///@desc Update GUI elements

if not instance_exists(ob_gui)
	exit
	
//if not object_is_ancestor(object_index, ob_gui_hero)

if not instance_exists(hero)
	exit

var n = 0

// health
var _x = 15
var elem = []
elem[el.pos   ] = [_x, 2]
elem[el.sprite] = sp_gui_health
elem[el.index ] = 0
ob_gui.element[n++] = elem

repeat health {
	_x+=8
	elem = []
	elem[el.pos   ] = [_x, 2]
	elem[el.sprite] = sp_gui_health
	elem[el.index ] = 1
	ob_gui.element[n++] = elem
}
repeat (hero.maxhealth - health) {      
	_x+=8
	elem = []
	elem[el.pos   ] = [_x, 2]
	elem[el.sprite] = sp_gui_health
	elem[el.index ] = 2
	ob_gui.element[n++] = elem
}
_x+=8
elem = []
elem[el.pos   ] = [_x, 2]
elem[el.sprite] = sp_gui_health
elem[el.index ] = 3
ob_gui.element[n++] = elem

ob_gui.elementCount = n

