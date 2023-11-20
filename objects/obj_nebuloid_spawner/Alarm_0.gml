
loop = 0;

while (loop <= global.year){
	
	var nebuloid = instance_create_layer(-100, random_range(50, room_height - 50), "Instances", obj_nebuloid)
	nebuloid.hspeed = 6
	loop = loop + 1
	
}

loop = 0;
alarm[0] = room_speed * 0.5
