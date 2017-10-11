/// @desc

if flashing
	isVisible = not isVisible
else 
	isVisible = true
		
if isVisible
	event_perform_object(ob_cmpHurtable, ev_draw, 0)
