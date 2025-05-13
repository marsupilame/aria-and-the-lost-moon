function scr_attack_slash(){
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
		if ds_list_find_index(obj_player.inimigos_atingidos,hitid) == -1 and obj_enemy.hit=0{
			ds_list_add(obj_player.inimigos_atingidos,hitid)
			with (hitid){
				scr_hit_enemys(2)
			}
		}
	}
}
if hitobjs > 0{
	for (var i =0; i<hitobjs;i++){
		var find=instance_nearest(x,y,obj_objetos_quebravis)
		var hitid=acertado_agorav2[| i]
		if ds_list_find_index(obj_player.obj_atingidos,hitid) == -1{
			ds_list_add(obj_player.obj_atingidos,hitid)
			with (hitid){
				instance_destroy(find)
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
		sprite_index=spr_player_ataque
	ds_list_clear(obj_player.inimigos_atingidos)
mask_index=spr_player_ataque_collision
var acertado_agora=ds_list_create()
var hits=instance_place_list(x,y,obj_enemy,acertado_agora,false)
if hits > 0{
	for (var i =0; i<hits;i++){
		var hitid=acertado_agora[| i]
		if ds_list_find_index(obj_player.inimigos_atingidos,hitid) == -1 and obj_enemy.hit=0{
			ds_list_add(obj_player.inimigos_atingidos,hitid)
			with (hitid){
				scr_hit_enemys(2)
			}
		}
	}
}
ds_list_destroy(acertado_agora)
mask_index=spr_player_collision
}