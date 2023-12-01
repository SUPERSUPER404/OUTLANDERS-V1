/// @description Insert description here
// You can write your code in this editor


if(hit_points <= 0)
	instance_destroy(self)
else if(distance_to_object(instance_nearest(self.x, self.y, obj_Tower_parent)) > 128) {
	
	move_towards_point(obj_planet.x, obj_planet.y, speed_current);
	image_angle = point_direction(x, y, obj_planet.x, obj_planet.y) + 90;
	
}
else if(distance_to_object(instance_nearest(self.x, self.y, obj_Tower_parent)) > 64) {
	
	var inst = instance_nearest(self.x, self.y, obj_Tower_parent);
	
	move_towards_point(
	inst.x,
	inst.y,
	speed_current);
	
	image_angle = point_direction(x, y, inst.x, inst.y) + 90;
	
}
else {
	
	var inst = instance_nearest(self.x, self.y, obj_Tower_parent);
	
	speed = 0
	
	image_angle = point_direction(x, y, inst.x, inst.y) + 90;
	
	if(canShoot) {

		var instance_bullet = instance_create_depth(x,y, depth - 1, obj_bullet_enemy)
		instance_bullet.direction = point_direction(self.x, self.y, inst.x, inst.y)
		instance_bullet.image_angle = instance_bullet.direction;
		instance_bullet.speed = 10;
		
		canShoot = false;
		
		alarm[1] = room_speed * fire_rate;
		
	}
	
}


