function scr_player_move_teclado(){
	var move=-keyboard_check(vk_left)+keyboard_check(vk_right)
	hsp=move*spd


if place_meeting(x+sign(hsp),y,obj_block){
	if !place_meeting(x+sign(hsp),y-1,obj_block){
		y-=2

	}
}else{
	if !place_meeting(x+sign(hsp),y+1,obj_block){
		if place_meeting(x+sign(hsp),y+2,obj_block){
			y+=2
		}
	}
}

if place_meeting(x+hsp,y,obj_block){
	while !place_meeting(x+sign(hsp),y,obj_block){
		x+=sign(hsp)
	}
	hsp=0
}


x+=hsp
if pulou=false && keyboard_check(ord("A")){
	vsp+=jsp
}else{
	vsp+=grav
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
y+=vsp
}