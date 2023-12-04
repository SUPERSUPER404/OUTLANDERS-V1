/// @description Insert description here
// You can write your code in this editor

var num_spawn = irandom_range(1, 3);
var pos_spawn = y - 32;

for(i = 0; i < num_spawn; i ++) {

	var type = irandom_range(1, 2);
	
	if(type == 1)
		instance_create_layer(x, pos_spawn, "Instances", obj_nebuloid);
	else
		instance_create_layer(x, pos_spawn, "Instances", obj_galactron);
		
	pos_spawn += 32;

}

alarm[2] = room_speed * random_range(2, 5)
