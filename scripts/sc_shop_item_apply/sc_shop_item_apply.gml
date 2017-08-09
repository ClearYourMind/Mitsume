/// @desc Apply the item from shop
/// @arg item

// of ob_hero_gui_shop

var _item = argument0

switch _item[item.type] {
case itemtype.exitshop:
	paused = false
	instance_change(ob_hero_gui, false)
	break
case itemtype.weapon1:
	weaponNum = 1
	hero.weaponList[weaponNum, 1] = true
	hero.weapon = hero.weaponList[weaponNum, 0]
	break
case itemtype.weapon2:
	weaponNum = 2
	hero.weaponList[weaponNum, 1] = true
	hero.weapon = hero.weaponList[weaponNum, 0]
	break
case itemtype.weapon3:
	weaponNum = 3
	hero.weaponList[weaponNum, 1] = true
	hero.weapon = hero.weaponList[weaponNum, 0]
	break
case itemtype.killarrow:
	hero.arrowObject = ob_kill_arrow
	break
case itemtype.life:
	lives++
	break
case itemtype.medkit:
	health = hero.maxhealth
	break
}
