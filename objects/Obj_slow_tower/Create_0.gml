/// @description Insert description here
// You can write your code in this editor

image_speed = 0;

name = "slow"
level = 1;

upgrade_price = 50;

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
	global.slow = global.slow / 1.3
	bullet_damage += 0.5
}