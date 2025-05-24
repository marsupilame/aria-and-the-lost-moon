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
					var _save="save.txt"
					ini_open(_save)
					var x1=ini_read_string("personagem","x",0)
					var y1=ini_read_string("personagem","y", 0)
					var _room=ini_read_string("personagem","room",0)
					_room=base64_decode(_room)
					_room=string_digits(_room)
					global.playergotox=base64_decode(x1)
					global.playergotoy=base64_decode(y1)
					room=_room
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
				case 0: room_goto(Inventario_3); global.menu="inventario_itens"
				global.inventario=0 break;
				case 1: room_goto(Inventario_3); global.menu="inventario_weapons"
				global.inventario=1 break
				case 2: room_goto(Inventario_3); global.menu="inventario_usables"
				global.inventario=2 break
				case 3:  break
				case 4:  break
			}
		break
		
		case "inventario_itens": 
			switch index{
				case 0:  break;
				case 1: room_goto(rm_menu_1); global.menu="inventario_menu" break
			}
		break
		
		case "inventario_weapons": 
			switch index{
				case 0:
				//	obj_player.weapons_equipados=global.weapons_adquiridos[obj_itenamostra.itenatual]
				break;
				case 1: room_goto(rm_menu_1); global.menu="inventario_menu" break
			}
		break
		
		case "inventario_usables": 
			switch index{
				case 0:  break;
				case 1: room_goto(rm_menu_1); global.menu="inventario_menu" break
			}
		break
	
		case "pause": 
			switch index{
				case 0: room_goto(Room2)
				obj_gui.alarm[0]=1
				break;
				case 1:  break
				case 2: global.menu="menu" break
				case 3: game_end() break
			}
		break
		}
	}
}