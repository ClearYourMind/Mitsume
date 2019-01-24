/// @desc Apply the item from shop
/// @arg item

// of ob_hero_gui_shop
if not instance_exists(hero)
	exit

var _item = argument0

switch _item[item.type] {
case itemtype.exitshop:
	paused = false
	instance_change(ob_hero_gui, false)
	break
case itemtype.weapon1:
	with hero {
		weaponNum = 1
		weaponList[weaponNum, 1] = true
		weapon = weaponList[weaponNum, 0]
	}
	break
case itemtype.weapon2:
	with hero {
		weaponNum = 2
		weaponList[weaponNum, 1] = true
		weapon = weaponList[weaponNum, 0]
	}
	break
case itemtype.weapon3:
	with hero {
		weaponNum = 3
		weaponList[weaponNum, 1] = true
		weapon = weaponList[weaponNum, 0]
	}
	break
case itemtype.killarrow:
	hero.arrowObject = ob_kill_arrow
	break
case itemtype.life:
	lives++
	break
case itemtype.medkit:
	health = hero.maxhealth
	hero.healthUsed++
	break
case itemtype.strength:
	hero.level++
	with hero
		event_perform(ev_other, ev_user0)
	break
case itemtype.magnet:
	hero.hasMagnet = true;
	break
}
