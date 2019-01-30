/// @desc Start wave

waveNumber++

waveScore += 1 + waveScore*0.025

curScore = 0
with ob_scroll_spawn_area
	spawnAllowed = true

debugstr = "wave started. Score: "+string(waveScore)
