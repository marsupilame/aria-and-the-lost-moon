//se terminar a animação da transição
if sprite_index=spr_player_move_transition{
	//o sprite é a animç~~ao de se mexer
	sprite_index=spr_player_move
}
//se terminar a animação de ataque
if sprite_index=spr_player_ataque{
	//o estado é idle
	state=PLAYER.IDLE
	//define que acabou o atque
	comecouataque=false}
	if sprite_index=spr_player_ataque_2{
	//o estado é idle
	state=PLAYER.IDLE
	//define que acabou o atque
	comecouataque=false}