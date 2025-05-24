#region variables
//velocidade horizontal
hsp=0
//velocidade vertical
vsp=0
//velocidade
spd=2.5
//gravidade
grav=0.26
//força do puloo
jsp=-6
//se pulou
pulou=false
//se o player está na transiçao do idle pro move
transitioning=false
//dano
dano=0
//lado que o player ta olhando
lado=0
//se otaque ja começou
comecouataque=false
//lista dos objetos quebraveis atingidos
obj_atingidos=ds_list_create()
//lista dos inimigos atingidos
inimigos_atingidos=ds_list_create()
//se o player foi acertado
hit=0
//vida
hp=40
//estado ao player ser criado
state=PLAYER.IDLE
//cooldown de o player entrar na escada no ar (resolver bugs fodas kkk)
cool=60

//itens armazenados
global.itens_adquiridos[0]=""
global.usable_adquiridos[0]=""
global.weapons_adquiridos[0]="Pedaço de Pau"
itens_equipados=""
weapons_equipados="Punho"
global.inventario=0
//estados fodas
enum PLAYER{
	ATTACK_SLASH,
	WALKING_KEY,
	WALKING_CON,
	INAIR,
	IDLE,
	SHOOTING,
	ATTACK_INAIR,
	ATTACK_COMBO,
	AGACHADO,
	SUBINDOESCADAFODA
}
#endregion
#region save go to
//se o x da jogada passada não for 0
if global.playergotox!=0{
	//x é igual ao x da jogada passada
	x=global.playergotox	
}
//se o y da jogada passada não for 0
if global.playergotoy!=0{
	//y é igual ao y da jogada passada
	y=global.playergotoy	
}
#endregion
