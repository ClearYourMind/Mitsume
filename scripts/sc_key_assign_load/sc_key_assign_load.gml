///@desc Load saved key assignments

var _n
var loaded = false

if file_exists("config.ini") {
	ini_open("config.ini")
	with ob_control
	if ini_section_exists("control-"+object_get_name(object_index)) {
		for (var i=0; i<array_length_1d(cfgKeyNums); i++)
			keyAssign[cfgKeyNums[i]] = ini_read_real(
				"control-"+object_get_name(object_index), 
				cfgKeyStrs[i], defaultKey[i]
				)
		loaded = true
					        
	}
	ini_close()
}

if not loaded 
	with ob_control
	for (var i=0; i<array_length_1d(cfgKeyNums); i++)
		keyAssign[cfgKeyNums[i]] = defaultKey[i]


