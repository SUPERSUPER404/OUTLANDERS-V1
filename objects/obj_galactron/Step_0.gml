/// @description Insert description here
// You can write your code in this editor


if(hit_points <= 0)
	instance_destroy(self)
else if(distance_to_object(instance_nearest(self.x, self.y, obj_Tower_parent)) > 128) {
	
	move_towards_point(obj_planet.x, obj_planet.y, speed_current);	
	
}
else if(distance_to_object(instance_nearest(self.x, self.y, obj_Tower_parent)) > 64) {
	
	move_towards_point(
	instance_nearest(self.x, self.y, obj_Tower_parent).x,
	instance_nearest(self.x, self.y, obj_Tower_parent).y,
	speed_current);
	
}
else {
	
	
	
}

image_angle = point_direction(x, y, obj_planet.x, obj_planet.y) + 90


