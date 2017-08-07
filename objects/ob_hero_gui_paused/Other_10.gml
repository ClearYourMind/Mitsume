/// @desc Update elements

if not instance_exists(hero)
	exit

elementCount = 0

sc_gui_add_rect_element([0, 0], [view_w, 20], c_black, 0.8)

// health
var _x = 12
var _y = 0

sc_gui_add_sprite_element(sp_gui_health, 0, [_x, _y])

repeat health {
	_x+=8
	sc_gui_add_sprite_element(sp_gui_health, 1, [_x, _y])
}
repeat (hero.maxhealth - health) {      
	_x+=8
	sc_gui_add_sprite_element(sp_gui_health, 2, [_x, _y])
}

_x+=8
sc_gui_add_sprite_element(sp_gui_health, 3, [_x, _y])


// paused layout
_x=105
i = 0
for (i=0; i<array_height_2d(hero.weaponList); i++) {
	if hero.weaponNum = i {
		if visible_1 
			sc_gui_add_sprite_element(sp_gui_frame, 0, [_x, _y])
	} else
		sc_gui_add_sprite_element(sp_gui_frame, 0, [_x, _y])
	if hero.weaponList[i, 1] = true
		sc_gui_add_sprite_element(sp_gui_weapon, hero.weaponList[i,0].index, [_x, _y])
	_x+=24+4
}
	
_x=219
if visible_2
	sc_gui_add_sprite_element(sp_gui_status, 1, [_x, _y+3])

_x = view_w - 24
if not visible_1
	sc_gui_add_sprite_element(sp_menu_arrow, 1, [_x, -4])
