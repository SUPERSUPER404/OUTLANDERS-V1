/// @description Insert description here


target = noone
wave = (25)*(global.year) + 100
hit_points = wave
hit_points_max = hit_points;

speed_current = random_range(0.7, 1.2);
speed_original = speed_current;

//upgrade for slow tower maybe
speed_timer = 4*room_speed

hurt = function(_amount = 100){
	hit_points -= _amount;
	
	if(hit_points <= 0){
		instance_destroy(self);
	}
}

slow = function(){

	speed_current = global.slow;

	
}

