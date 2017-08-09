/// @desc 

visible_1 = true
visible_2 = true

menuPos = 0
menuDx = 0
menuX = 0
menuInterval = view_w * 0.275

menu = []

enum item {
	name,
	desc,
	sprite, //(index)
	price,
	type,
	soldout,
}

enum itemtype {
	exitshop,
	medkit,
	weapon1,
	weapon2, 
	weapon3,
	killarrow,
	life
}

// init menu items
var n = 0
var _item = []

menu[n] = []
_item[item.name]    = "EXIT"
_item[item.desc]    = "Good bye!"
_item[item.sprite ] = 0
_item[item.price  ] = 0
_item[item.soldout] = false
_item[item.type] = itemtype.exitshop
menu[n++] = _item

menu[n] = []
var _item = []
_item[item.name]    = "RADIO"
_item[item.desc]    = "Here is nothing yet, come again and see if anything appeared"
_item[item.sprite ] = 0
_item[item.price  ] = 1000
_item[item.soldout] = hero.weaponList[1, 1]
_item[item.type] = itemtype.weapon1
menu[n++] = _item

menu[n] = []
var _item = []
_item[item.name]    = "RAPID"
_item[item.desc]    = "Here is nothing yet, come again and see if anything appeared"
_item[item.sprite ] = 0
_item[item.price  ] = 1000
_item[item.soldout] = hero.weaponList[2, 1]
_item[item.type] = itemtype.weapon2
menu[n++] = _item

menu[n] = []
var _item = []
_item[item.name]    = "BLOW"
_item[item.desc]    = "Here is nothing yet, come again and see if anything appeared"
_item[item.sprite ] = 0
_item[item.price  ] = 1000
_item[item.soldout] = hero.weaponList[3, 1]
_item[item.type] = itemtype.weapon3
menu[n++] = _item

menu[n] = []
var _item = []
_item[item.name]    = "STRIKE"
_item[item.desc]    = "Here is nothing yet, come again and see if anything appeared"
_item[item.sprite ] = 0
_item[item.price  ] = 1000
_item[item.soldout] = (hero.arrowObject == ob_kill_arrow)
_item[item.type] = itemtype.killarrow
menu[n++] = _item

menu[n] = []
var _item = []
_item[item.name]    = "1UP"
_item[item.desc]    = "Here is nothing yet, come again and see if anything appeared"
_item[item.sprite ] = 0
_item[item.price  ] = 5000
_item[item.soldout] = false
_item[item.type] = itemtype.life
menu[n++] = _item


menu[n] = []
var _item = []
_item[item.name]    = "HEALTH"
_item[item.desc]    = "Here is nothing yet, come again and see if anything appeared"
_item[item.sprite ] = 0
_item[item.price  ] = 200
_item[item.soldout] = (health == hero.maxhealth)
_item[item.type] = itemtype.medkit
menu[n++] = _item

menuCount = n
