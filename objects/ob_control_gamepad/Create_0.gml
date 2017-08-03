cfgKeyNums = [k.Fire,   k.Jump,   k.altFire    ]
cfgKeyStrs = ["FIRE",   "JUMP",   "EXTRA"      ]
defaultKey = [gp_face4, gp_face3, gp_shoulderrb]

event_inherited()
/// @desc Init values

gpNum = -1
lastButton = -1

// key assignments
keyAssign[k.Left ] = gp_padl
keyAssign[k.Right] = gp_padr
keyAssign[k.Up   ] = gp_padu
keyAssign[k.Down ] = gp_padd
keyAssign[k.Pause] = gp_start

alarm_set(1, 50)

