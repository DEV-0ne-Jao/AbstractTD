randomize();
criado = false;
desenhar = false;
texto = "";

indice = 0;
indice2 = 0;

cooX[0] = (random(room_width) + random(room_width) + random(room_width) + random(room_width) + random(room_width)) / 5;
cooY[0] = (random(room_height) + random(room_height) + random(room_height)) / 3;

numeroCurvas = 5;
tamanhoTotal = 6000;
teste = 0;

for(var a = 0; a < numeroCurvas; ++a){
	tamanho[a] = 1000 + random(500);
	teste += tamanho[a];
	
	if(teste > tamanhoTotal){
		tamanho[a] -= floor( random(teste - tamanhoTotal) - (teste - tamanhoTotal) / 2);
	} else if(a == numeroCurvas - 1) {
		tamanho[a] += floor( random(tamanhoTotal - teste) + (tamanhoTotal - teste) / 2);
	}
}

for(var a = 1; a <= numeroCurvas; ++a){
	cooX[a] = cooX[a - 1] + dcos(random(380)) * tamanho[a - 1];
	cooY[a] = cooY[a - 1] + dsin(random(380)) * tamanho[a - 1];
	
	if(cooX[a] < 80){
		cooX[a] = 80 + tamanho[a - 1];
	} else if(cooX[a] > room_width - 80) {
		cooX[a] = room_width - 80 - tamanho[a - 1 ];
	}
	
	if(cooY[a] < 80){
		cooY[a] = 80 + tamanho[a - 1] / 2;
	} else if(cooY[a] > room_height - 80) {
		cooY[a] = room_height - 80 - tamanho[a - 1] / 2;
	}
	
	curva = instance_create_depth(cooX[a], cooY[a], 0, obj_caminhoCurva);
	curva.idCurva = a;
	curva.alarm[0] = 1;
}