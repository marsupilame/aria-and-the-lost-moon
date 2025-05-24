//se tocar no player, o planta ve o player
var find=instance_nearest(x,y,obj_plantinha_venenosa)
find.viu=1
//e o viu se destroi
instance_destroy()