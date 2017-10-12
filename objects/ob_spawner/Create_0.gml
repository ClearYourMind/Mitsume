/// @desc Init values

enemyObject = noone
spawnPeriod = 15

spawnTime = sc_timeout_new(random(spawnPeriod*0.25))
sc_timeout_start(spawnTime)

