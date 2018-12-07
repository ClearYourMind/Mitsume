/// @desc
event_inherited()

//event_perform_object(ob_moving, ev_step, ev_step_normal)
//event_perform_object(ob_hero_scroll, ev_step, ev_step_normal)

#region // control
var newAnim = sp_hero_condor_stand

if keys[k.Up]
if canMoveUp {
	accelY = -accelHi
}
if keys[k.Down]
if canMoveDown {
	accelY = accelHi
}
if keys[k.Left]
if canMoveLeft {
	accelX = -accelHi
}
if keys[k.Right]
if canMoveRight {
	accelX = accelHi
}


if keys[k.Fire] {
	sc_weapon_firing(true)
	pauseTime = sc_timeout_new(afterShotTime)
	sc_timeout_start(pauseTime)
	pauseAnim = after.Shot
} else
	sc_weapon_firing(false)


// paused animations
if not sc_timeout_over(pauseTime) {
	if pauseAnim = after.Shot {
		newAnim = sp_hero_condor_fire
	}
} else {
	pauseAnim = after.None
}

if sprite_index != newAnim {
	sprite_index = newAnim
	mask_index = sp_hero_condor_stand
//	image_index = 0
}

#endregion


// process stamina
if hero.stamina < hero.staminaMax {
	if hero.staminaDepleted or not (pauseAnim = after.Shot)
		hero.stamina += hero.staminaRegenSpeed * dTime
} else {
	hero.stamina = hero.staminaMax
	hero.staminaDepleted = false
}

event_perform_object(ob_heroparent, ev_step, ev_step_normal)
