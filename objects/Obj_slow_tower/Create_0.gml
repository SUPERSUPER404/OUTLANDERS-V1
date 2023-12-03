/// @description Insert description here
// You can write your code in this editor
audio_play_sound(Sxf_slow, 1, false);
image_speed = 0;

name = "slow"
level = 1;

upgrade_price = 300;
upgrade_cap = 3;
speed_multiplier = 0.8

bullet_damage = global.slow;
rate_of_fire = 100;
radius = 250;

can_shoot = true;
target = noone;
hover = false;
alarm_set(1,1);

upgrade = function(){
	// same for each tower
	level += 1;
	upgrade_price = upgrade_price + upgrade_price
	//diff for each tower
	radius += 20;
	speed_multiplier -= 0.05
}