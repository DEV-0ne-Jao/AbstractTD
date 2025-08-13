if(ponto < array_length(obj_spawn.cooX)){
	direction = point_direction(x, y, obj_spawn.cooX[ponto], obj_spawn.cooY[ponto]);
}
speed = 10;

if(image_alpha > 0.2){
	image_alpha -= 0.05
} else {
	image_alpha += 0.3
}