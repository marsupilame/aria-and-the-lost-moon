function scr_start(){
if keyboard_check_pressed(vk_escape){
	room_goto(rm_menu)
	global.menu="pause"
}
}