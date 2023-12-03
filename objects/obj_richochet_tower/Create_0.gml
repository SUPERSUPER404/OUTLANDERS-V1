/// @description Insert description here
// You can write your code in this editor

image_speed = 0;

name = "Richochet Tower"
level = 1;

upgrade_price = 200;
upgrade_cap = 4;
bullet_damage = 50 + (global.year * 10);

rate_of_fire = 1;
radius = 192;

hit_points = 100;
hit_points_max = hit_points;

can_shoot = true;
target = noone;
hover = false;
alarm_set(1,1);

richochet = 6


upgrade = function(){
	// same for each tower
	level += 1;
	upgrade_price = upgrade_price + upgrade_price
	//diff for each tower
	richochet += 2
	radius += 20
	
}