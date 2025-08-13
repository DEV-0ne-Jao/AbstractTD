if(indice < array_length(codX)){
	var caminho = instance_create_depth(codX[indice], codY[indice], 10, obj_caminho);

	caminho.image_angle = point_direction(caminho.x, caminho.y, random(1600), random(800));
} else {
	var caminho = instance_create_depth(codX[array_length(codX) - 1], codY[array_length(codX) - 1], 10, obj_caminho);

	caminho.image_angle = point_direction(caminho.x, caminho.y, random(1600), random(800));
}
if(indice + 3 <= array_length(codX)){
	indice += 3;
	alarm[2] = 1;
}