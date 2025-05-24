draw_set_font(Font1)
var dist = 80
var width= display_get_gui_width()
var height= display_get_gui_height()
var x1= width/2
var y1= height/3
for (var i = 0;i<op_max;i++){
	var y2=y1+(dist*i)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	if index=i{sprite=spr_button_selected}else{sprite=spr_button}
	if room=Inventario_3{ draw_sprite(sprite,0,x1,y2+375)}else{draw_sprite(sprite,0,x1,y2)}
	if room=Inventario_3{draw_text(x1,y2+375,options[i])}else{draw_text(x1,y2,options[i])}
}