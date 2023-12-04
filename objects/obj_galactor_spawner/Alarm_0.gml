/// @description Insert description here
// You can write your code in this editor


if(self.x < room_width/2) {
	var galactor = instance_create_layer(-100, irandom_range(room_height/2 - 256, room_height/2 + 256), "Instances", obj_galactor)
	galactor.hspeed = 20
}
else {
	var galactor = instance_create_layer(room_width + 100, irandom_range(room_height/2 - 256, room_height/2 + 256), "Instances", obj_galactor)
	galactor.hspeed = -20
	galactor.image_angle += 180
}


if(global.year > 18) {
	alarm[0] = room_speed * (35 - (global.year - 3));
}
else {
	alarm[0] = room_speed * 30;
}
audio_play_sound(Sxf_bigguyspawned, 1, false);

