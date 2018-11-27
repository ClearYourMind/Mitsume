
audio_stop_sound(sn_hurt)
sc_play_sound(sn_hurt2, false)

with ob_game_master
	sc_timeout_start(restartTime)

with instance_create_depth(x, y	- other.vspeed - 2, depths.general, ob_hero_dead_lay) {

	maxspeedX = other.maxspeedX
	maxspeedY = other.maxspeedY
	forward = other.forward
	speedX = -other.maxspeedX * other.forward
	speedY = -other.maxspeedX*2
	stopFactor = 1
	oStopFactor = other.oStopFactor
}

//health = 0

sc_gui_update(hero.guiObject)

lives--

instance_destroy()
