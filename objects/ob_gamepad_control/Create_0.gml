/// @desc Init values

gpNum = -1
lastButton = -1

// key assignments
_key[k.Left ] = gp_padl
_key[k.Right] = gp_padr
_key[k.Up   ] = gp_padu
_key[k.Down ] = gp_padd
_key[k.Jump ] = gp_face3
_key[k.Fire ] = gp_face4
_key[k.altFire] = gp_shoulderrb
_key[k.Pause] = gp_start

escHold = false

instance_deactivate_object(id)
