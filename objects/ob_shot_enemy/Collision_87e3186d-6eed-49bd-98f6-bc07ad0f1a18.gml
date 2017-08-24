/// @desc Destroy shot

if not (other.recover or other.hurt) {
	instance_destroy()
	with hero.id
		sc_hero_hurt()
}
