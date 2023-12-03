/// @description Insert description here
// You can write your code in this editor



image_speed = 0;

name = "Spawner"
level = 1;

hit_points = 100;

num_spawned = 1;

upgrade_price = 400;
upgrade_cap = 3;
bullet_damage = 1;

rate_of_fire = 7;
radius = 150;

can_shoot = true;
target = noone;
is_selected = false;
hover = false;
alarm_set(1,1);


upgrade = function(){
	// same for each tower
	level += 1;
	upgrade_price += upgrade_price 
	//diff for each tower
	num_spawned ++;
	
}

if(instance_nearest(self.x, self.y, obj_platform) < 10) {
	onPlanet = false
}

