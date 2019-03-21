/// @desc Start wave

waveNumber++

wavePoints += 1 + wavePoints*0.025

curPoints = 0
with ob_scroll_spawn_area
	spawnAllowed = true

debugstr = "wave started. Score: "+string(wavePoints)
