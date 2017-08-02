event_inherited()
/// @desc Init GUI

enum mode {
	start,
	wait,
	controls
}

varVisible = true
varPos = 0
varListKey = []
varListStr = []
varPressed = false

varMode = mode.start
