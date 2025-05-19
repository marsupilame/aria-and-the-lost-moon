//se a vida do inimigo for menor ou igual a 0, ele de destroi
if ehp<=0{instance_destroy()}
//se o hp não for igual a vida anterior, quer dizer que ele foi acertado, logo hit é =1
if ehp!=danolevado{
	hit=1
//e dano levado é definido como a mesma coisa que o hp de novo
	danolevado=ehp
}
//se ele te viu
if viu>0{
	//se ele ainda não atirou em você
	if atirou=false{
		//ele defini o alarme pra daqui 150 frames
		alarm[1]=150
		//ele defini que não pode mais atirar pois ja atirou
		atirou=true
	}}
//se ele não te viu
if viu=0{
	//ele fica normal
	sprite_index=spr_plantinha_louca} 
	//ja se ele te vir, ele vai pra tansição
	if viu=1{sprite_index=spr_plantinha_louca_transition}
	if viu=2{
	//e depois fica abertasso
	sprite_index=spr_plantinha_louca_aberta
	//tambem comessa a te olhar
	image_angle=point_direction(x,y,obj_player.x,obj_player.y+10)
}