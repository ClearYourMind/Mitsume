/// @desc Init values

enemyObject = noone
spawnPeriod = 10

spawnTime = sc_timeout_new(spawnPeriod + random(spawnPeriod*0.5)-spawnPeriod*0.25)
sc_timeout_start(spawnTime)
