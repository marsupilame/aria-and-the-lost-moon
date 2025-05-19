function scr_player_hit(){
	var _dano=0
	if place_meeting(x,y,obj_enemy){_dano=obj_enemy.dano}
	else if place_meeting(x,y,obj_plantinha_venenosa){_dano=obj_plantinha_venenosa.dano}
	if place_meeting(x,y,obj_enemys)and hit=0{
		hp-=_dano
		alarm[0]=40
		hit=1
		if x>obj_enemys.x{
		hsp=2}
		if x<obj_enemys.x{
		hsp=-2}
		vsp=-6
	}
}