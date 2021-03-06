/// @desc 

visible_1 = true

menuPos = 0
menuDx = 0
menuX = 0
menuInterval = view_w * 0.275
menuCount = 0

menu = []
chosen = false

enum item {
	name,
	desc,
	sprite, //(index)
	price,
	type,
	level,
	soldout,
}

enum itemtype {
	exitshop,
	medkit,
	weapon1,
	weapon2, 
	weapon3,
	killarrow,
	life,
	strength,
	magnet,
}

sc_gui_set_tickerline("Welcome to my humble shop. Please buy something", view_w * 0.9)

// init menu items
var n = 0
var _item = []

menu[n] = []
_item[item.name]    = "EXIT"
_item[item.desc]    = "Good bye!"
_item[item.sprite ] = 1
_item[item.price  ] = 0
_item[item.soldout] = false
_item[item.type] = itemtype.exitshop
menu[n++] = _item

menu[n] = []
var _item = []
_item[item.name]    = "WAVE"
_item[item.desc]    = "Psycho wave controlled by your mind"
_item[item.sprite ] = 3
_item[item.price  ] = 1000
_item[item.soldout] = hero.weaponList[1, 1]
_item[item.type] = itemtype.weapon1
menu[n++] = _item

menu[n] = []
var _item = []
_item[item.name]    = "RAPID"
_item[item.desc]    = "Mental storm of rage"
_item[item.sprite ] = 4
_item[item.price  ] = 1000
_item[item.soldout] = hero.weaponList[2, 1]
_item[item.type] = itemtype.weapon2
menu[n++] = _item

menu[n] = []
var _item = []
_item[item.name]    = "BLOW"
_item[item.desc]    = "Energy blow, covering much space"
_item[item.sprite ] = 5
_item[item.price  ] = 1000
_item[item.soldout] = hero.weaponList[3, 1]
_item[item.type] = itemtype.weapon3
menu[n++] = _item

menu[n] = []
var _item = []
_item[item.name]    = "CONDOR"
_item[item.desc]    = "Super condor"
_item[item.sprite ] = 6
_item[item.price  ] = 1000
_item[item.soldout] = (hero.arrowObject == ob_kill_arrow)
_item[item.type] = itemtype.killarrow
menu[n++] = _item

menu[n] = []
var _item = []
_item[item.name]    = "1UP"
_item[item.desc]    = "Gives one more Life"
_item[item.sprite ] = 8
_item[item.price  ] = 5000
_item[item.soldout] = false
_item[item.type] = itemtype.life
menu[n++] = _item


menu[n] = []
var _item = []
_item[item.name]    = "HEALTH"
_item[item.desc]    = "Restores your HP. It has limited number of uses!"
_item[item.sprite ] = 2
_item[item.price  ] = 200
_item[item.level  ] = 4 - hero.healthUsed
_item[item.soldout] = (health == hero.maxhealth) or (hero.healthUsed == 4)
_item[item.type] = itemtype.medkit
menu[n++] = _item

menu[n] = []
var _item = []
_item[item.name]    = "STRENGTH"
_item[item.desc]    = "Makes you more powerful. Rises you to level "+string(hero.level + 1)
_item[item.sprite ] = 9
_item[item.price  ] = 2000
_item[item.level  ] = hero.level
_item[item.soldout] = (hero.level == 5)
_item[item.type] = itemtype.strength
menu[n++] = _item

menu[n] = []
var _item = []
_item[item.name]    = "MAGNET"
_item[item.desc]    = "Attracts coins using your telepathy"
_item[item.sprite ] = 10
_item[item.price  ] = 1000
_item[item.soldout] = hero.hasMagnet
_item[item.type] = itemtype.magnet
menu[n++] = _item

menuCount = n
