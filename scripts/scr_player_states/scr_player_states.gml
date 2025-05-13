function player_state_idle(){
	if keyboard_check(vk_left) or keyboard_check(vk_right){state=player_state_moving_teclado}
	if vsp!=0 or keyboard_check(ord("A")){state=player_state_inair}
	if keyboard_check_pressed(ord("S")){state=player_state_attack_slash}
	if keyboard_check_pressed(ord("Q")){state=player_state_shooting}
		transitioning=false
}
function player_state_inair(){
	scr_player_move_teclado()
	if vsp=0 and hsp=0 and !keyboard_check(vk_left) and !keyboard_check(vk_right){state=player_state_idle}
	if hsp!=0 and vsp=0{state=player_state_moving_teclado}
	if keyboard_check_pressed(ord("S")){state=player_state_attack_inair}
	if keyboard_check_pressed(ord("Q")){state=player_state_shooting}
	transitioning=false
}
function player_state_moving_teclado(){
	scr_player_move_teclado()
	if vsp=0 and hsp=0 and !keyboard_check(vk_left) and !keyboard_check(vk_right){state=player_state_idle}
	if vsp!=0 or keyboard_check(ord("A")){state=player_state_inair}
	if keyboard_check_pressed(ord("S")){state=player_state_attack_slash}
	if keyboard_check_pressed(ord("Q")){state=player_state_shooting}
}
function player_state_moving_controle(){
	
}
function player_state_attack_slash(){
	scr_attack_slash()
}
function player_state_attack_combo(){
	
}
function player_state_attack_inair(){
	scr_attack_inair()
	scr_player_move_teclado()
}
function player_state_shooting(){
	scr_player_move_teclado()
	instance_create_layer(x,y-10,"Tiros",Object10)
	if hsp!=0 and vsp=0{state=player_state_moving_teclado}
	if vsp=0 and hsp=0 and !keyboard_check(vk_left) and !keyboard_check(vk_right){state=player_state_idle}
	if vsp!=0{state=player_state_inair}
}