function scr_start(){
if keyboard_check_pressed(vk_escape){
	room_goto(rm_menu_1)
	global.menu="pause"
}
if keyboard_check(ord("R")){
	last_x=x
	last_y=y
	room_goto(rm_menu_1)
	global.menu="inventario_menu"
}
}