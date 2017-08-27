/// @desc Level up

if maxhealth<8 {
	maxhealth++
	health = maxhealth
}

staminaMax *= 1.2
staminaRegenSpeed *= 1.2

with ob_weapon { 
	reloadTime = reloadTime / (1+((hero.level-1) * 0.12))
	initiated = false
}
