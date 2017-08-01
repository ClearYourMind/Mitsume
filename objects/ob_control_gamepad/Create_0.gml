event_inherited()
/// @desc Init values

gpNum = -1
lastButton = -1

// key assignments
keyAssign[k.Left ] = gp_padl
keyAssign[k.Right] = gp_padr
keyAssign[k.Up   ] = gp_padu
keyAssign[k.Down ] = gp_padd
keyAssign[k.Jump ] = gp_face3
keyAssign[k.Fire ] = gp_face4
keyAssign[k.altFire] = gp_shoulderrb
keyAssign[k.Pause] = gp_start

alarm_set(1, 50)

//instance_deactivate_object(id)
