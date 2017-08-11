/// @desc

if hero.hurt or hero.staminaDepleted
	shoot = false

if shoot {
	if sc_timeout_over(reloadTime) {
		reloaded = true	
		if hero.stamina >= staminaReq {
			hero.stamina -= staminaReq
		} else {
			shoot = false
			hero.staminaDepleted = true
		}
	}
}

