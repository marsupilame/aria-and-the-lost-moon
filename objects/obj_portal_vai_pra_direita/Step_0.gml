if place_meeting(x,y,obj_player){
	//se o player colidir, ele pula 375 pixels pra direita(prox area)
obj_player.y=instance_nearest(x,y,obj_portal_vai_pra_esquerda).y+65
obj_player.x=instance_nearest(x,y,obj_portal_vai_pra_esquerda).x+30

}