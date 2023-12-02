/// @description Insert description here
// You can write your code in this editor

image_speed = 0;

name = "Richochet Tower"
level = 1;

upgrade_price = 50;
bullet_damage = 10;

rate_of_fire = 1;
radius = 128;

can_shoot = true;
target = noone;
hover = false;
alarm_set(1,1);

richochet = 8


upgrade = function(){
	// same for each tower
	level += 1;
	upgrade_price = upgrade_price + upgrade_price
	//diff for each tower
	richochet += 2
	radius += 20
	bullet_damage += 15
}