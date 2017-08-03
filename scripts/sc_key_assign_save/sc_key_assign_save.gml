///@desc Save key assignments

ini_open("config.ini")
with ob_control
for (var i=0; i<array_length_1d(cfgKeyNums); i++) {
	ini_write_string( "control-"+object_get_name(object_index),
					  cfgKeyStrs[i],
					  string(keyAssign[cfgKeyNums[i]])
					)
}
ini_close()
