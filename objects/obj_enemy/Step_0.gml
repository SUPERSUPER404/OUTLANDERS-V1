/// @description Insert description here
// You can write your code in this editor


if(hit_points <= 0)
	instance_destroy(self)
else {
	if(instance_exists(Obj_slow_tower)) {
		
		if(distance_to_object(Obj_slow_tower) < instance_nearest(self.x, self.y, Obj_slow_tower).radius)
			move_towards_point(obj_planet.x, obj_planet.y, speed_current * instance_nearest(self.x, self.y, Obj_slow_tower).speed_multiplier);
		else {
			move_towards_point(obj_planet.x, obj_planet.y, speed_current)	
		}
			
	}
	else {
		move_towards_point(obj_planet.x, obj_planet.y, speed_current);	
	}
}