//deixa o cor do texto branca
draw_set_color(c_white)
//escreve o hp a tela
if room!=rm_menu_1 and room!=Inventario_3{
draw_text(x,y,"HP: "+string(obj_player.hp))}
window_set_cursor(cr_none)