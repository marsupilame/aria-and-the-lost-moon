scr_menu()
switch global.menu{
	case "menu": options=["New game", "Load game", "Options", "Exit"] break
	case "options": options=["Audio", "Graphics", "Controls", "Exit to menu"] break
	case "inventario_menu":  options=["Itens","Usable Itens", "Weapons","Collectables","Exit"] break
	case "pause": options=["Continue","Options", "Exit to menu", "Exit"] break
	case "inventario_itens": options=["Equip", "Exit"] break
	case "inventario_weapons": options=["Equip", "Exit"] break
	case "inventario_usables": options=["Use", "Exit"] break
}