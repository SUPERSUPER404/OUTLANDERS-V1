/// @description Insert description here
target = noone
wave = (50)*(global.timer/60) + 100
hit_points = wave
hit_points_max = hit_points;

speed_current = random_range(0.5, 1);
speed_original = speed_current;

//upgrade for slow tower maybe
speed_timer = 4*room_speed

hurt = function(_amount = 100){
	hit_points -= _amount;
	
	if(hit_points <= 0){
	instance_destroy();
	global.score += 1 
	}
}

slow = function(){
	
	speed_current = speed_current/global.slow;
	alarm_set(0,speed_timer)
	
}