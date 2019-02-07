event_inherited()

/// @desc Init values


maxhealth = 6
health = maxhealth
healthUsed = 0

// weapons config
weaponList[0, 0] = instance_create_depth(0,0, depths.shots, ob_weapon_1)
weaponList[0, 1] = true 
weaponList[1, 0] = instance_create_depth(0,0, depths.shots, ob_weapon_2)
weaponList[1, 1] = false
weaponList[2, 0] = instance_create_depth(0,0, depths.shots, ob_weapon_3)
weaponList[2, 1] = false
weaponList[3, 0] = instance_create_depth(0,0, depths.shots, ob_weapon_4)
weaponList[3, 1] = false

weaponNum = 0
weapon = weaponList[weaponNum, 0]

//arrow = noone
arrowObject = ob_kill_arrow_scroll_stand
guiObject = ob_hero_gui

hasMagnet = false;

staminaMax = 30
stamina = staminaMax
staminaRegenSpeed = staminaMax * (1/ 0.5/* sec*/)
staminaDepleted = false
