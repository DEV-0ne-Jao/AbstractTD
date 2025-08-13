a = round(random(8) / 2);

switch(a){
	case 1:
		sprite_index = spr_pedrinhas_1;
		break;
	case 2:
		sprite_index = spr_pedrinhas_2;
		break;
	case 3:
		sprite_index = spr_pedrinhas_3;
		break;
	case 4:
		sprite_index = spr_pedrinhas_4;
		break;
	default:
		sprite_index = spr_pedrinhas_1;
}

image_yscale = 0.1;
image_xscale = 0.1;

var caminho = instance_create_depth(x, y, 10, obj_caminho);

if(idCurva == array_length(obj_spawn.cooX)){
	caminho.image_yscale = 3;
	caminho.image_xscale = 3;
} else {
	caminho.image_yscale = 1.1;
	caminho.image_xscale = 1.1;
}

caminho.image_angle = random(360);