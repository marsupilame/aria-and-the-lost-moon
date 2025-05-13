function scr_menu(){
	if keyboard_check_pressed(vk_down){
		if index!=op_max-1{index++}else{index=0}
	}
	if keyboard_check_pressed(vk_up){
		if index!=0{index-=1}else{index=op_max-1}
	}
	if keyboard_check_released(ord("A")){

		switch global.menu{
			case "menu":
			switch index{
				case 0: room_goto_next() break;
				case 1: 		
					ini_open("save.sav")
					global.playergotox=ini_read_real("personagem","x",0)
					global.playergotoy=ini_read_real("personagem","y", 0)
					room_goto(ini_read_real("personagem","room", 0))
					ini_close()
				break
				case 2:  break
				case 3: game_end() break;
			}
		break
	
		case "options": 
			switch index{
				case 0:  break;
				case 1:  break
				case 2:  break
				case 3:  break;
			}
		break
	
		case "inventario_menu": 
			switch index{
				case 0:  break;
				case 1:  break
				case 2:  break
				case 3:  break;
			}
		break
	
		case "pause": 
			switch index{
				case 0:  break;
				case 1:  break
				case 2: global.menu="menu" break
				case 3: game_end() break
			}
		break
		}
	}
}