/// @desc before death

sc_weapon_firing(false)

lives--
instance_destroy(ob_hero_abstract)
with ob_game_master
	sc_timeout_start(restartTime)

image_speed = 0.5
