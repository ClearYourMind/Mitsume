event_inherited()
/// @desc Check collision
var _wall = sc_check_collision(ob_wall)
var _mwall = sc_check_collision(ob_motion_wall)

collisionResult = [_wall[0] or _mwall[0], _wall[1] or _mwall[1]]

