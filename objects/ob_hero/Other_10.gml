/// @desc Level up

maxhealth++
health = maxhealth

staminaMax *= 1.25
staminaRegenSpeed *= 1.25

with ob_weapon {
	reloadTime = reloadTime / (1+((hero.level-1) * 0.125))
	initiated = false
}
