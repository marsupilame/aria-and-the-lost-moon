#region variables
hsp=0
vsp=0
spd=2.5
grav=0.26
jsp=-6
pulou=false
transitioning=false
dano=2
lado=0
comecouataque=false
obj_atingidos=ds_list_create()
gamepad=false
hit=0
hp=40
state=PLAYER.IDLE
cool=60
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
if global.playergotox!=0{
x=global.playergotox	
}
if global.playergotoy!=0{
y=global.playergotoy	
}
#endregion
inimigos_atingidos=ds_list_create()