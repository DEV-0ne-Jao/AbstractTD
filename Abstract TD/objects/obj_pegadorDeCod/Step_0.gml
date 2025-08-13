if(ponto < array_length(obj_spawn.cooX)){
	direction = point_direction(x, y, obj_spawn.cooX[ponto], obj_spawn.cooY[ponto]);
}
speed = 5;

obj_spawn.codX[step] = x;
obj_spawn.codY[step] = y;

++step;