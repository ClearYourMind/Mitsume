event_inherited()
/// @desc
image_speed = 1

shineImIndex = 0
shineImSpeed = 0.15

//shineCount = 0
shine = ds_list_create()
shineSpawnTime = sc_timeout_new(0.15, true)
sc_timeout_start(shineSpawnTime)
shineSpeed = 10 // only Y and upwards

enum sh {
	lifetime,
	phase,
    x, y,
}
