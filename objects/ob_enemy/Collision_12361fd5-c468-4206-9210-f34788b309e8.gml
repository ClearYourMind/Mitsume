/// @desc Hurt enemy

event_perform_object(ob_cmpHurtable, ev_collision, ob_shot)

if strength<=0
	instance_destroy()
