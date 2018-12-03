/// @desc

event_perform_object(ob_moving, ev_step, ev_step_normal)

var newForward = forward

if keys[k.Left]
	newForward = -1
if keys[k.Right]
	newForward = 1
	
if keys[k.Jump]
	wantJump = true
else
	wantJump = false

if keys[k.altFire] {
	if not instance_exists(ob_arrow)
		instance_create_depth(0,0, depths.shots, arrowObject)
	if ob_arrow.phase = ar.Stay
		ob_arrow.phase = ar.Recall
	if ob_arrow.phase = ar.Hold {
		sprite_index = sp_hero_arrow_hold
		image_index = 0
	}
}

// releasing arrow
if not keys[k.altFire] {
	if instance_exists(ob_arrow) {
	    if (ob_arrow.phase = ar.Appear) or (ob_arrow.phase = ar.Recall)
			ob_arrow.phase = ar.Disappear
	    if ob_arrow.phase = ar.Hold {
	        ob_arrow.phase = ar.LaunchBegin
	        sc_play_sound(sn_arrow2, false)
			image_index = 0
			instance_change(ob_hero_arrow_throw, false)
			exit
	    }
	}
	instance_change(ob_hero, false)
}


if not feetcollision {
	stopFactor = 1
} else
	stopFactor = oStopFactor
	
forward = newForward
image_xscale = forward

event_perform_object(ob_heroparent, ev_step, ev_step_normal)
