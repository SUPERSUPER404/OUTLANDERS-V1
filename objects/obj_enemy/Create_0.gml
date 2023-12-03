/// @description Insert description here


target = noone
wave = (50)*(global.timer/60) + 100
hit_points = wave
hit_points_max = hit_points;

speed_current = random_range(0.7, 1.2);
speed_original = speed_current;


hurt = function(_amount = 100){
	hit_points -= _amount;
	
	if(hit_points <= 0){
	instance_destroy();
	global.score += 1 
	}
}

slow = function(){

	speed_current = global.slow

	
}

