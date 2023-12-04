/// @description Insert description here
// You can write your code in this editor

dir = irandom_range(1, 2);

hit_points = 500 + (50 * global.year);
hit_points_max = hit_points;

move_towards_point(self.x + irandom_range(400, 800), self.y + room_height + 256, 0.5);


hurt = function(_amount = 100){
	hit_points -= _amount;
	
	if(hit_points <= 0){
	instance_destroy();
	global.score += 1 
	}
}

slow = function(){

	speed_current = global.slow;

	
}

