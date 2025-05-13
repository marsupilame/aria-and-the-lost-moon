
if place_meeting(x,y,obj_player) && keyboard_check_pressed(vk_up){
	if file_exists("save.sav"){file_delete("save.sav")}
	ini_open("save.sav")
	ini_write_real("personagem","x", obj_player.x)
	ini_write_real("personagem","y", obj_player.y)
	ini_write_real("personagem","room", room)
	ini_close()
	}
