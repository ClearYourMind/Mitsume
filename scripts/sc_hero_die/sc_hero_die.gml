/// @desc Instant death

audio_stop_sound(sn_hurt)
sc_play_sound(sn_hurt2, false)

with ob_game_master
	sc_timeout_start(restartTime)
	
with instance_create_depth(x, y, depths.hero, ob_hero_dead) {
	maxspeedX = other.maxspeedX
	maxspeedY = other.maxspeedY
	speedX = other.maxspeedX * other.forward
	speedY = -other.maxspeedX
	image_xscale = -other.forward
}

health = 0

sc_gui_update(hero.guiObject)

lives--

instance_destroy()
