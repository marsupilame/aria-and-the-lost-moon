function Script8(){
var find_iten=instance_nearest(x,y,obj_pickups_itens)
var length_iten=array_length(global.itens_adquiridos)
var find_usable=instance_nearest(x,y,obj_pickups_usable)
var length_usable=array_length(global.usable_adquiridos)
var find_weapons=instance_nearest(x,y,obj_pickups_weapons)
var length_weapons=array_length(global.weapons_adquiridos)
if place_meeting(x,y,obj_pickups_itens){
	global.inventario=0
	if global.itens_adquiridos[0]=""
	{global.itens_adquiridos[0]=find_iten.name}else{global.itens_adquiridos[length_iten]=find_iten.name}
	instance_destroy(find_iten)
}
if place_meeting(x,y,obj_pickups_usable){
	global.inventario=1
	if global.usable_adquiridos[0]=""
	{global.usable_adquiridos[0]=find_usable.name}else{global.usable_adquiridos[length_usable]=find_usable.name}
	instance_destroy(find_usable)
}
if place_meeting(x,y,obj_pickups_weapons){
	global.inventario=2
	if global.weapons_adquiridos[0]=""
	{global.weapons_adquiridos[0]=find_weapons.name}else{global.weapons_adquiridos[length_weapons]=find_weapons.name}
	instance_destroy(find_weapons)
}
}