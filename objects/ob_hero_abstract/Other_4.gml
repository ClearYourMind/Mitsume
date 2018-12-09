/// @desc Create required hero object

// ob_hero_scroll_stand may be not first available form of hero
instance_create_layer(x, y, "Instances", ob_hero_scroll_stand)
instance_create_depth(x, y, depths.shots, ob_arrow_scroll)

