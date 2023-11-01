/// @description Insert description here
// You can write your code in this editor

var closest = instance_nearest(self.x, self.y, obj_nebuloid)

if(distance_to_object(closest) < range && canShoot) {
	
	var inst2 = instance_create_layer(self.x, self.y, "Instances", obj_laser_red);

    inst2.width = point_distance(self.x, self.y, closest.x, closest.y);
	inst2.height = 8;
	inst2.laser_spawn_x = self.x;
	inst2.laser_spawn_y = self.y;
	
	instance_destroy(closest)	
	global.score += 1
	canShoot = false
	alarm[0] = room_speed / shots_per_second
	
}


