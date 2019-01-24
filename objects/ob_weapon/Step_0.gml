/// @desc

// init
if not initiated {
	reloadTimeout = sc_timeout_new(reloadTime, true)
	initiated = true
}

if not instance_exists(hero)
	exit
	
if not reloaded
if sc_timeout_over(reloadTimeout)
	reloaded = true

canShoot = reloaded and not hero.staminaDepleted and shoot

if canShoot {
	hero.stamina -= staminaReq
	if hero.stamina < staminaReq 
		hero.staminaDepleted = true
}
