scr_menu()
switch global.menu{
	case "menu": options=["New game", "Load game", "Options", "Exit"] break
	case "options": options=["Audio", "Graphics", "Controls", "Exit to menu"] break
	case "inventario_menu":  options=["Collectables", "Key itens", "Itens"] break
	case "pause": options=["Continue","Options", "Exit to menu", "Exit"] break
}