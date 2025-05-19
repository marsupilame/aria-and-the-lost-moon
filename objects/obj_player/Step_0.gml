switch state{
	case PLAYER.IDLE: 
		if keyboard_check(vk_left) or keyboard_check(vk_right){state=PLAYER.WALKING_KEY}
		if vsp!=0 or keyboard_check(ord("A")){state=PLAYER.INAIR}
		if keyboard_check_pressed(ord("S")){state=PLAYER.ATTACK_SLASH}
		if keyboard_check_pressed(ord("Q")){state=PLAYER.SHOOTING}
		transitioning=false 
		if place_meeting(x,y,obj_escada){if keyboard_check(vk_up) or keyboard_check(vk_down){state=PLAYER.SUBINDOESCADAFODA
			}}else{
			if keyboard_check(vk_down){state=PLAYER.AGACHADO}}
		
	break

	
	case PLAYER.WALKING_KEY: 	
		scr_player_move_teclado()
		if vsp=0 and hsp=0 and !keyboard_check(vk_left) and !keyboard_check(vk_right){state=PLAYER.IDLE}
		if vsp!=0 or keyboard_check(ord("A")){state=PLAYER.INAIR}
		if keyboard_check_pressed(ord("S")){state=PLAYER.ATTACK_SLASH}
		if keyboard_check_pressed(ord("Q")){state=PLAYER.SHOOTING} 
		if keyboard_check(vk_down){state=PLAYER.AGACHADO}
		break
	case PLAYER.INAIR:
		scr_player_move_teclado()
		if vsp=0 and hsp=0 and !keyboard_check(vk_left) and !keyboard_check(vk_right){state=PLAYER.IDLE}
		if hsp!=0 and vsp=0{state=PLAYER.WALKING_KEY}
		if keyboard_check_pressed(ord("S")){state=PLAYER.ATTACK_INAIR}
		if keyboard_check_pressed(ord("Q")){state=PLAYER.SHOOTING}
				if place_meeting(x,y,obj_escada)and cool=0{if keyboard_check(vk_up) or keyboard_check(vk_down){
				cool=40
				state=PLAYER.SUBINDOESCADAFODA
					}}
		transitioning=false
	break
	
	case PLAYER.WALKING_CON:  break
	
	case PLAYER.ATTACK_SLASH: scr_attack_slash() break
	
	case PLAYER.ATTACK_COMBO:  break
	
	case PLAYER.ATTACK_INAIR: 
		scr_attack_inair()
		scr_player_move_teclado()
	break
	
	case PLAYER.SHOOTING:
		scr_player_move_teclado()
		instance_create_layer(x,y-10,"Tiros",arrow)
		if hsp!=0 and vsp=0{state=PLAYER.WALKING_KEY}
		if vsp=0 and hsp=0 and !keyboard_check(vk_left) and !keyboard_check(vk_right){state=PLAYER.IDLE}
		if vsp!=0{state=PLAYER.INAIR}
		if vsp=0 and keyboard_check(vk_down)
	break
	case PLAYER.AGACHADO: if keyboard_check_released(vk_down){state=PLAYER.IDLE} break
	case PLAYER.SUBINDOESCADAFODA: scr_player_move_teclado()
	if place_meeting(x,y,obj_escada){
		if keyboard_check(vk_up){ vsp=-3}
		else if keyboard_check(vk_down){vsp=3}else{vsp=0}
	}
	if !place_meeting(x,y+vsp,obj_escada){vsp=3}
	if keyboard_check(vk_left) or keyboard_check(vk_right){state=PLAYER.INAIR}
	break
}

scr_sprite_player()
scr_start()
if state=PLAYER.ATTACK_INAIR{spd=1.5}
if state=PLAYER.WALKING_KEY{spd=2.25}
scr_player_hit()
if cool!=0{cool--}