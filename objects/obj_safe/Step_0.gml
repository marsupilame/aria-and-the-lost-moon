
if place_meeting(x,y,obj_player) && keyboard_check_pressed(vk_up){
	var _save="save.txt"
	if file_exists(_save){file_delete(_save)}
	var x2=base64_encode(string(obj_player.x))
	var y2=base64_encode(string(obj_player.y))
	var _room=base64_encode(string(room))
	ini_open(_save)
	ini_write_string("personagem","x", x2)
	ini_write_string("personagem","y", y2)
	ini_write_string("personagem","room", _room)
	ini_close()
	}
