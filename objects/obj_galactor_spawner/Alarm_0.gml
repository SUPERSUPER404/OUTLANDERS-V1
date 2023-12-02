/// @description Insert description here
// You can write your code in this editor



var galactor = instance_create_layer(-100, irandom_range(room_height/2 - 256, room_height/2 + 256), "Instances", obj_galactor)
galactor.hspeed = 0.5
	
alarm[0] = room_speed * (20 - (global.year / 2));
audio_play_sound(Sxf_shopmoving, 1, false);

