function scr_player_move_teclado(){
	//variavel que vai ser 1 ou -1 de acordo com voce apertar pra direita ou esquerda
	var move=-keyboard_check(vk_left)+keyboard_check(vk_right)
	//se não tiver sendo acertado ele defini a velocidade horizontal como move (1 or -1) *spd (5 ou -5)
	if hit=0{ hsp=move*spd}
//se tiver andando (ja desacelerado) e tocar em algum bloco
if place_meeting(x+sign(hsp),y,obj_block){
	//se 1 pixel acima não tiver nada
	if !place_meeting(x+sign(hsp),y-1,obj_block){
		//ele sobe
		y-=2
	}
}else{
	if !place_meeting(x+sign(hsp),y+1,obj_block){
		if place_meeting(x+sign(hsp),y+2,obj_block){
			y+=2
			if place_meeting(x+sign(hsp),y,obj_rampa){x+=2}
			if place_meeting(x+sign(hsp),y,obj_rampa_1){x-=2}
			vsp=0
			hsp=0
			if state=PLAYER.INAIR{state=PLAYER.WALKING_KEY}
		}
	}
}
if place_meeting(x+hsp,y,obj_block){
	while !place_meeting(x+sign(hsp),y,obj_block){
		x+=sign(hsp)
	}
	hsp=0
}


if place_meeting(x+hsp,y,obj_teto){
	while !place_meeting(x+sign(hsp),y,obj_teto){
		x+=sign(hsp)
	}
	hsp=0
}


if state!=PLAYER.SUBINDOESCADAFODA{
x+=hsp
if pulou=false && keyboard_check(ord("A")){
	vsp+=jsp
}else{
	vsp+=grav
}
}
if place_meeting(x,y+vsp,obj_block){
	while !place_meeting(x,y+sign(vsp),obj_block){
		y+=sign(vsp)
	}
	vsp=0
	pulou=false
}else{
	pulou=true
}


if place_meeting(x,y+vsp,obj_teto){
	while !place_meeting(x,y+sign(vsp),obj_teto){
		y+=sign(vsp)
	}
	vsp=0
}

if state=PLAYER.SUBINDOESCADAFODA{
if !keyboard_check(vk_down){
if place_meeting(x,y+vsp,obj_escada)and vsp>0{
	vsp=0
}
}}

y+=vsp
}