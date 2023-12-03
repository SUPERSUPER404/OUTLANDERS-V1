/// @description Insert description here
// You can write your code in this editor

image_speed = 0;

name = "defualt"
level = 1;

hit_points = 100;
hit_points_max = hit_points;

upgrade_price = 300;
upgrade_cap = 3;
bullet_damage = 1;

rate_of_fire = 0.2;
radius = 128;

can_shoot = true;
target = noone;
is_selected = false;
hover = false;
alarm_set(1,1);


upgrade = function() {
	
	// same for each tower
	level += 1;
<<<<<<< HEAD
	upgrade_price+= upgrade_price
	//diff for each tower
	radius += 10
=======
	upgrade_price *= 2;
	//diff for each tower
	bullet_damage *= 2;
	
>>>>>>> 10d00602558a977b3001c47be421177301c7d2f0
}

if(instance_nearest(self.x, self.y, obj_platform) < 10) {
	onPlanet = false
}








