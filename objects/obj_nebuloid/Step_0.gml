/// @description Insert description here
// You can write your code in this editor

if(hit_points <= 0)
	instance_destroy(self)

if(distance_to_point(obj_planet.x, obj_planet.y) > 192) {
	move_towards_point(obj_planet.x, obj_planet.y, speed_current);	
}
else {
	move_towards_point(obj_planet.x, obj_planet.y, 2 * speed_current);
}






