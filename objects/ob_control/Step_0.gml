/// @desc Process keys

if keyboard_check(vk_escape) {
	game_end()
	exit
}

for (var i=0; i<array_length_1d(_key); i++) {
	keys[i] = keyboard_check(_key[i])
}

counter++
