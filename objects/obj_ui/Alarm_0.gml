/// @description Insert description here
// You can write your code in this editor


alarm[0] = room_speed*60
global.year = global.year+1

if((global.timer / 60) % 2 == 0) {

	instance_create_layer(-200, -200, "Instances", obj_nebuloid_spawner);
	
}