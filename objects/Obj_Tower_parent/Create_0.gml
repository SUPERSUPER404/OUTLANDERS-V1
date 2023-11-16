/// @description Insert description here
// You can write your code in this editor

image_speed = 0;

name = "defualt"
level = 1;

upgrade_price = 10;
bullet_damage = 1;

rate_of_fire = 0.2;
radius = 150;

can_shoot = true;
target = noone;
is_selected = false;
hover = false;
alarm_set(1,1);


upgrade = function(){
	// same for each tower
	level += 1;
	upgrade_price = upgrade_price + (upgrade_price/5)
	//diff for each tower
	
	
	
}