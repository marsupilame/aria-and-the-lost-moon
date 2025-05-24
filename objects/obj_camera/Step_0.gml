//se o player não existir o codigo para
if !instance_exists(target){exit}
x=lerp(x,target.x,0.5)
y=lerp(y,target.y-height/4,0.5)
//a posição da camera é x - a largura dividida por 2 e y é a y - a altura do player/2.5
camera_set_view_pos(view_camera[0],x-width/2,y-height/2.5)