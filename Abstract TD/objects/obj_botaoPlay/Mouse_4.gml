if(room = 0){
	room_goto_next();
} else {
	obj_spawn.alarm[1] = 1;
	instance_destroy();
}