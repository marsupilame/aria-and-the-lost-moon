function scr_sprite_player(){
if hsp>0{lado=0}
if hsp<0{lado=1}
switch state{
	case player_state_moving_controle:
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
	
		case player_state_moving_teclado:
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
	
	case player_state_idle: sprite_index=spr_player_idle break
	case player_state_inair: 
		sprite_index=spr_player_inair
		if lado=0{
			image_xscale=1
		}
		if lado=1{
			image_xscale=-1
		}
	break
	case player_state_attack_slash:  break
	case player_state_attack_combo: break
}
}