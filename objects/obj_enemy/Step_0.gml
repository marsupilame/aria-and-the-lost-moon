//se a vida do inimigo for menor ou igual a 0, ele de destroi
if ehp<=0{instance_destroy()}
//se o hp não for igual a vida anterior, quer dizer que ele foi acertado, logo hit é =1
if ehp!=danolevado{
	hit=1
//e dano levado é definido como a mesma coisa que o hp de novo
	danolevado=ehp
}