function scr_sprite_player(){
if hsp>0{lado=0}
if hsp<0{lado=1}
switch state{
	case PLAYER.WALKING_CON:

		if transitioning=false{
			sprite_index=spr_player_move_transition
			transitioning=true
		}
	break
	
		case PLAYER.WALKING_KEY:
		if transitioning=false{
			sprite_index=spr_player_move_transition
			transitioning=true
		}
	break
	
	case PLAYER.IDLE: sprite_index=spr_player_idle break
	case PLAYER.INAIR: 
		sprite_index=spr_player_inair

	break
	case PLAYER.ATTACK_SLASH: 
	switch weapons_equipados{
	case "Pedaço de Pau": sprite_index=spr_player_ataque break
	case "Espadão": sprite_index=spr_player_ataque_1 break
	case "Punho": sprite_index=spr_player_ataque_2 break
	}
	break
	case PLAYER.ATTACK_COMBO: break
	case PLAYER.SUBINDOESCADAFODA: sprite_index=spr_player_subindo break
	case PLAYER.AGACHADO: sprite_index=spr_player_agachado break
}
}