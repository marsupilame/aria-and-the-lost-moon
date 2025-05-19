function scr_attack_slash(){
//se ainda não começou o ataque
if obj_player.comecouataque=false{
	//o frame atual é 1
	image_index=0
	//começou o ataque, logo a animação continua
	obj_player.comecouataque=true}
//tira os dados da lista inimigos atingidos
ds_list_clear(obj_player.inimigos_atingidos)
//a colisão vira a colisão de ataque logo ele bate kk
mask_index=spr_player_ataque_collision
//cria uma lista dos objetos inimigos acertados agora
var acertado_agora=ds_list_create()
//cria uma lista dos objetos quebraveis acertados
var acertado_agorav2=ds_list_create()
//ele coloca todos os inimigos acertados na lista acertado agora e pega essa quantidade pra ele mesmo
var hits=instance_place_list(x,y,obj_enemys,acertado_agora,false)
//coloca os objetos quebraveis acertados na lista acerta agorav2 e pega essa quantidade pra ele mesmo
var hitobjs=instance_place_list(x,y,obj_objetos_quebravis,acertado_agorav2,false)
//se acertou mais de 0 inimigos
if hits > 0{
	//defini a var i como 0, a condição é enquanto i for menor que hits, e no final i adiciona 1
	for (var i =0; i<hits;i++){
		//a variavel hitid fica com os objetos acertados (cada um especificamente ate o for acabar
		var hitid=acertado_agora[| i]
		//ele checa se os inimigos do hitid tambem estão na lista inimigos atingidos e o hit do objeto atual acertado  for 0
		if ds_list_find_index(obj_player.inimigos_atingidos,hitid) == -1 and hitid.hit=0{
			//ele adiciona os objetos do hitid no inimigos atingidos
			ds_list_add(obj_player.inimigos_atingidos,hitid)
			//da 2 de dano
			with (hitid){
				scr_hit_enemys(2)
			}
		}
	}
}
//se a lista de objetos acertados for maior que 0
if hitobjs > 0{
	for (var i =0; i<hitobjs;i++){
		var findo=instance_nearest(x,y,obj_objetos_quebravis)
		var hitid=acertado_agorav2[| i]
		if ds_list_find_index(obj_player.obj_atingidos,hitid) == -1{
			ds_list_add(obj_player.obj_atingidos,hitid)
			with (hitid){
				instance_destroy(findo)
			}
		}
	}
}
ds_list_destroy(acertado_agora)
ds_list_destroy(acertado_agorav2)
mask_index=spr_player_collision
}
function scr_attack_combo(){

}
function scr_attack_inair(){
	if obj_player.comecouataque=false{
		image_index=0
		obj_player.comecouataque=true
	}
	sprite_index=spr_player_ataque
	ds_list_clear(obj_player.inimigos_atingidos)
mask_index=spr_player_ataque_collision
var acertado_agora=ds_list_create()
var acertado_agorav2=ds_list_create()
var hits=instance_place_list(x,y,obj_enemys,acertado_agora,false)
var hitobjs=instance_place_list(x,y,obj_objetos_quebravis,acertado_agorav2,false)
if hits > 0{
	for (var i =0; i<hits;i++){
		var hitid=acertado_agora[| i]
		if ds_list_find_index(obj_player.inimigos_atingidos,hitid) == -1 and hitid.hit=0{
			ds_list_add(obj_player.inimigos_atingidos,hitid)
			with (hitid){
				scr_hit_enemys(2)
			}
		}
	}
}
if hitobjs > 0{
	for (var i =0; i<hitobjs;i++){
		var findo=instance_nearest(x,y,obj_objetos_quebravis)
		var hitid=acertado_agorav2[| i]
		if ds_list_find_index(obj_player.obj_atingidos,hitid) == -1{
			ds_list_add(obj_player.obj_atingidos,hitid)
			with (hitid){
				instance_destroy(findo)
			}
		}
	}
}
ds_list_destroy(acertado_agora)
ds_list_destroy(acertado_agorav2)
mask_index=spr_player_collision
}
