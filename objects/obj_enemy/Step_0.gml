/// @description Insert description here
// You can write your code in this editor

if(distance_to_object(instance_nearest(x, y, obj_Tower_parent)) > 64)
	target = obj_planet
else
	target = instance_nearest(x, y, obj_Tower_parent)

if(hit_points <= 0)
	instance_destroy(self)