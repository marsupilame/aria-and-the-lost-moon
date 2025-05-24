switch global.inventario{
	case 0: lenght=array_length(global.itens_adquiridos)-1 break
	case 1: lenght=array_length(global.usable_adquiridos)-1 break
	case 2: lenght=array_length(global.weapons_adquiridos)-1 break
}

if keyboard_check_pressed(vk_right){
if itenatual!=lenght{itenatual++}else{itenatual=0}}
if keyboard_check_pressed(vk_left){
if itenatual!=0{itenatual--}else{itenatual=lenght}}
