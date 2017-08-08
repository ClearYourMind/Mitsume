/// @desc Add element in array
/// @arg text
/// @arg pos [x; y]
/// @arg [color default = c_white
/// @arg alpha default = 1]
// of ob_gui

var elem = []
elem[el.type] = el.elText
elem[el.pos ] = argument[1]
elem[el.text] = argument[0]
elem[el.color] = c_white
elem[el.alpha] = 1
if argument_count > 2
	elem[el.color] = argument[2]
if argument_count > 3
	elem[el.alpha] = argument[3]


element[elementCount++] = elem

