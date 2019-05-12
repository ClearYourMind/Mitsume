///@desc Go to specified room
///@arg room

if room_exists(argument0) {
	previousRoom = room
	room_goto(argument0)
}
	
