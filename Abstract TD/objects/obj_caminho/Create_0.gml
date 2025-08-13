colidindoCurva = -1;

a = round(random(4));

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
image_angle = random(360);