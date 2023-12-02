/// @description Insert description here
// You can write your code in this editor

if(hit_points <= 0)
	instance_destroy(self)
else if(distance_to_object(instance_nearest(self.x, self.y, obj_enemy)) > 128) {
	
	move_towards_point(obj_enemy.x, obj_enemy.y, speed_current);
	image_angle = point_direction(x, y, obj_enemy.x, obj_enemy.y) + 90;
	
}
else if(distance_to_object(instance_nearest(self.x, self.y, obj_enemy)) > 64) {
	
	var inst = instance_nearest(self.x, self.y, obj_enemy);
	
	move_towards_point(
	inst.x,
	inst.y,
	speed_current);
	
	image_angle = point_direction(x, y, inst.x, inst.y) + 90;
	
}
else {
	
	var inst = instance_nearest(self.x, self.y, obj_enemy);
	
	speed = 0
	
	image_angle = point_direction(x, y, inst.x, inst.y) + 90;
	
	if(canShoot) {

		var instance_bullet = instance_create_depth(x,y, depth - 1, obj_Bullet_player)
		instance_bullet.direction = point_direction(self.x, self.y, inst.x, inst.y)
		instance_bullet.image_angle = instance_bullet.direction;
		instance_bullet.speed = 10;
		instance_bullet._damage = 50;
		canShoot = false;
		audio_play_sound(Sxf_eneyshot, 1, false);
		alarm[1] = room_speed * fire_rate;
		
	}
	
}


