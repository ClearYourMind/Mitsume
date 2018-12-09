/// @desc Control & Check status

mask_index = sp_hero_stand1
sc_hero_control()

event_perform_object(ob_moving, ev_step, ev_step_normal)

if stamina < staminaMax {
	stamina += staminaRegenSpeed * dTime
} else {
	stamina = staminaMax
	staminaDepleted = false
}

//debugstr +="\n"
//debugstr += " STAMINA = "+string(stamina)

event_perform_object(ob_heroparent, ev_step, ev_step_normal)
