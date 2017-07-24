event_inherited()
/// @desc Update elements

if not instance_exists(hero)
	exit

elementCount = 0

// health
var _x = 15
var _y = 0

sc_gui_add_element(sp_gui_health, 0, [_x, _y])

repeat health {
	_x+=8
	sc_gui_add_element(sp_gui_health, 1, [_x, _y])
}
repeat (hero.maxhealth - health) {      
	_x+=8
	sc_gui_add_element(sp_gui_health, 2, [_x, _y])
}

_x+=8
sc_gui_add_element(sp_gui_health, 3, [_x, _y])


//weapon
_x=115
sc_gui_add_element(sp_gui_frame, 0, [_x, _y])

if instance_exists(hero.weapon)
	sc_gui_add_element(sp_gui_weapon, hero.weapon.index, [_x, _y])


//score
_x+=32
sc_gui_add_element(sp_gui_coin, 0, [_x, _y])

_x+=2
var i = 0, number = 0, s = score, pow = 0
var numCount = 5
repeat(numCount) {
    i++
    pow = power(10, numCount-i)
    number = s div pow
    s -= number * pow
	sc_gui_add_element(sp_gui_number, number, [_x + 8*i, _y])
}


//status
_x+=64
sc_gui_add_element(sp_gui_status, 0, [_x, _y+3])

_x+=21
sc_gui_add_element(sp_gui_number, lives, [_x, _y])


