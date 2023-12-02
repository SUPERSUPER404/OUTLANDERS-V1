/// @description Insert description here
// You can write your code in this editor


	instance_destroy(self)
	global.life = global.life - 1
	audio_play_sound(Sxf_hitplanet, 1, false);