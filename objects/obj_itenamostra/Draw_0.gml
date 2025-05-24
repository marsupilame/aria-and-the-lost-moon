draw_set_color(c_black)
switch global.inventario{
case 0:
if global.itens_adquiridos[itenatual]="Dente de Ogro"{
	draw_sprite(spr_dente_do_ogro_fodao,0,683,320)
}
if global.itens_adquiridos[itenatual]="Bolinhavene"{
	draw_sprite(spr_bolinhavene_1,0,683,320)
}
if global.itens_adquiridos[itenatual]="Bloco Verde"{
	draw_sprite(Sprite36_1,0,689,320)
}
draw_text(x+20,y+100,global.itens_adquiridos[itenatual])
break
case 1: 

break
case 2:
	if global.weapons_adquiridos[itenatual]="Espadão"{
		draw_sprite(spr_espadao_1,0,683,320)
	} 
	if global.weapons_adquiridos[itenatual]="Pedaço de Pau"{
		draw_sprite(spr_pedaco_de_pau,0,683,320)
	} 
	draw_text(x+20,y+100,global.weapons_adquiridos[itenatual])
break
}

draw_text(x+20,y+200,itenatual)