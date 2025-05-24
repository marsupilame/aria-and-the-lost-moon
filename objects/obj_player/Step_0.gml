switch state{
	//se o estado atual for idle
	case PLAYER.IDLE: 
		//ele checa se eu apertei pra esquerda ou direita, se sim o estado é andando_teclado
		if keyboard_check(vk_left) or keyboard_check(vk_right){state=PLAYER.WALKING_KEY}
		//se a velocidade vertical não for 0 ou se apertar o a o estado é no ar
		if vsp!=0 or keyboard_check(ord("A")){state=PLAYER.INAIR}
		//se apertar s o estado é o ataque slash
		if keyboard_check_pressed(ord("S")){state=PLAYER.ATTACK_SLASH}
		//se apertar D o estado é atirando
		if keyboard_check_pressed(ord("D")){state=PLAYER.SHOOTING}
		//a transição do idle pro move acabou
		transitioning=false 
		//se estiver tocando na escada, apertar pra cima ou pra baixo o estado é subindo
		if place_meeting(x,y,obj_escada){if keyboard_check(vk_up) or keyboard_check(vk_down){state=PLAYER.SUBINDOESCADAFODA
			//senão tiver tocando e apertar pra baixo, ele fica agachado (state)
			}}else{
			if keyboard_check(vk_down){state=PLAYER.AGACHADO}}
		
	break
	//se o estado for andando_teclado
	case PLAYER.WALKING_KEY: 	
		//ele se move
		scr_player_move_teclado()
		/*se a velocidade vertical e a velocidade horizontal forem 0 e 
		não apertar nem pra direita nem pra esquerda o estado é idle*/
		if vsp=0 and hsp=0 and !keyboard_check(vk_left) and !keyboard_check(vk_right){state=PLAYER.IDLE}
		//se a velocidade vertical não for 0 ou apertar a o estado é no ar
		if vsp!=0 or keyboard_check(ord("A")){state=PLAYER.INAIR}
		//se apertar s o estado é ataque slash
		if keyboard_check_pressed(ord("S")){state=PLAYER.ATTACK_SLASH}
		//se apertar d o estado é atirando
		if keyboard_check_pressed(ord("D")){state=PLAYER.SHOOTING} 
		//se apertar pra baixo ele fica agachado
		if keyboard_check(vk_down){state=PLAYER.AGACHADO}
		break
	//se o estado for no ar
	case PLAYER.INAIR:
		//ele pode se mover
		scr_player_move_teclado()
		/*se a velocidade vertical e a velocidade horizontal forem 0 e 
		não apertar nem pra direita nem pra esquerda o estado é idle*/
		if vsp=0 and hsp=0 and !keyboard_check(vk_left) and !keyboard_check(vk_right) and pulou!=true
		{state=PLAYER.IDLE}
		//se hsp não for 0  e vsp for 0 o estado é andando
		if hsp!=0 and vsp=0 and pulou!=true{state=PLAYER.WALKING_KEY}
		//se a apertar s o esado é ataque no ar
		if keyboard_check_pressed(ord("S")){state=PLAYER.ATTACK_INAIR}
		//se apertar d o estado é atirando
		if keyboard_check_pressed(ord("D")){state=PLAYER.SHOOTING}
		//se estiver tocando na escada e cooldown for 0, ele checa se eu to apertando pra cima ou pra baixo
		if place_meeting(x,y,obj_escada)and cool=0{if keyboard_check(vk_up) or keyboard_check(vk_down){
			//o cooldown reinicia
			cool=40
			//o estado é subindo escada
			state=PLAYER.SUBINDOESCADAFODA
		}}
		//transicionando do idle pro move acaba
		transitioning=false
	break
	//se o estadp for andando com controle
	case PLAYER.WALKING_CON:  break
	//se o estadp for ataque slash
	case PLAYER.ATTACK_SLASH: scr_attack_slash() break
	//se o estadp for ataque combo
	case PLAYER.ATTACK_COMBO:  break
	//se o estadp for ataque no ar
	case PLAYER.ATTACK_INAIR: 
		//o ataque acontece
		scr_attack_inair()
		//ele pode se mover
		scr_player_move_teclado()
	break
	//se o estado for atirando
	case PLAYER.SHOOTING:
		//ele se move
		scr_player_move_teclado()
		//cria o tiro
		instance_create_layer(x,y-10,"Tiros",arrow)
		//se hsp não for 0 e vsp for 0 o estado é andando
		if hsp!=0 and vsp=0{state=PLAYER.WALKING_KEY}
		//se vsp for 0 e hsp e não apertar pra esq nem pra direita o estado é idle
		if vsp=0 and hsp=0 and !keyboard_check(vk_left) and !keyboard_check(vk_right){state=PLAYER.IDLE}
		//se vsp não for 0 o estado é no ar
		if vsp!=0{state=PLAYER.INAIR}
	break
	//se o estado for agachado
	case PLAYER.AGACHADO: 
		//se soltar o botão pra baixo o estado é idle
		if keyboard_check_released(vk_down){state=PLAYER.IDLE} break
	//se o estado for subindo escada
	case PLAYER.SUBINDOESCADAFODA: 
		//ele se move
		scr_player_move_teclado()
		//se estiver tocanda na escada e apertar pra cima vsp=-3
		if place_meeting(x,y,obj_escada){
			if keyboard_check(vk_up){ vsp=-3}
			//senão apertar pra cima, ele checa se esta apertando pra baixo
			else if keyboard_check(vk_down){vsp=3}else{vsp=0}
		}
		if !place_meeting(x,y+vsp,obj_escada){vsp=3}
		if keyboard_check(vk_left) or keyboard_check(vk_right){state=PLAYER.INAIR}
	break
}
//como o sprite so player muda
scr_sprite_player()
//ele checa se eu to apertando start
if keyboard_check(vk_escape){
	global.last_x=x
	global.last_y=y
scr_start()}
if keyboard_check(ord("R")){
	global.last_x=x
	global.last_y=y
scr_start()}
//se o estado for ataque no ar
if state=PLAYER.ATTACK_INAIR{spd=1.5}
//se o estado for movendo teclado
if state=PLAYER.WALKING_KEY{spd=2.25}
//o dano levado pelo inimigo
scr_player_hit()
Script8()
//se o cooldown não for 0 ele tira 1 do cooldown
var xfodao_dir=obj_portal_vai_pra_direita.x
var xfodao_esq=obj_portal_vai_pra_esquerda.x
if cool!=0{cool--}
