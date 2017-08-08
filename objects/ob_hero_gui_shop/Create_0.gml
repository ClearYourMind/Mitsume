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
	soldout,
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
menu[n++] = _item

menu[n] = []
_item[item.name]    = "NONE"
_item[item.desc]    = "Here is nothing yet, come again and see if anything appeared"
_item[item.sprite ] = 0
_item[item.price  ] = 0
_item[item.soldout] = false
menu[n++] = _item

menu[n] = []
_item[item.name]    = "NONE"
_item[item.desc]    = "Here is nothing yet, come again and see if anything appeared"
_item[item.sprite ] = 0
_item[item.price  ] = 0
_item[item.soldout] = false
menu[n++] = _item

menuCount = n
