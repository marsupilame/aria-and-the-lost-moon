function scr_sprite_player(){
if hsp>0{lado=0}
if hsp<0{lado=1}
switch state{
	case PLAYER.WALKING_CON:
		if lado=0{
			image_xscale=1
		}
		if lado=1{
			image_xscale=-1
		}
		if transitioning=false{
			sprite_index=spr_player_move_transition
			transitioning=true
		}
	break
	
		case PLAYER.WALKING_KEY:
		if lado=0{
			image_xscale=1
		}
		if lado=1{
			image_xscale=-1
		}
		if transitioning=false{
			sprite_index=spr_player_move_transition
			transitioning=true
		}
	break
	
	case PLAYER.IDLE: sprite_index=spr_player_idle break
	case PLAYER.INAIR: 
		sprite_index=spr_player_inair
		if lado=0{
			image_xscale=1
		}
		if lado=1{
			image_xscale=-1
		}
	break
	case PLAYER.ATTACK_SLASH: sprite_index=spr_player_ataque break
	case PLAYER.ATTACK_COMBO: break
	case PLAYER.SUBINDOESCADAFODA: sprite_index=spr_player_subindo break
	case PLAYER.AGACHADO: sprite_index=spr_player_agachado break
}
}