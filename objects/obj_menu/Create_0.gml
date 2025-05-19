//decide as opções do menu
switch global.menu{
	case "menu": options=["New game", "Load game", "Options", "Exit"] break
	case "options": options=["Audio", "Graphics", "Controls", "Exit to menu"] break
	case "inventario_menu":  options=["Collectables", "Key itens", "Itens"] break
	case "pause": options=["Continue","Options", "Exit to menu", "Exit"] break
}
//opção atual
index=0
//sprite do botão
sprite=spr_button
//maximo de opções
op_max=array_length(options)
//x e y que o player tem que ir ao carregar o jogo
global.playergotox=0
global.playergotoy=0