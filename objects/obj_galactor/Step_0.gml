/// @description Insert description here
// You can write your code in this editor

if(!spawnedLeft && x <= room_width/2 + 256 * 1.5) {
	
	if(notHit) {
		hspeed = 0;
		notHit = false;
	}
		
	move_towards_point(obj_planet.x, obj_planet.y, 0.3)
	image_angle = lerp(image_angle, point_direction(x, y, obj_planet.x, obj_planet.y), 0.2);
	
}
else if(!spawnedLeft && x <= room_width/2 + 512 * 1.25) {
	
	hspeed = lerp(hspeed, -0.3, 0.5);
	
}
else {
	
}

if(spawnedLeft && x >= room_width/2 - 256 * 1.5) {
	
	if(notHit) {
		hspeed = 0;
		notHit = false;
	}
		
	move_towards_point(obj_planet.x, obj_planet.y, 0.3);
	show_debug_message(image_angle)
	if(y < obj_planet.y)
		image_angle = lerp(image_angle, point_direction(x, y, obj_planet.x, obj_planet.y) - 360, 0.2);
	else 
		image_angle = lerp(image_angle, point_direction(x, y, obj_planet.x, obj_planet.y), 0.2);

}
else if(spawnedLeft && x >= room_width/2 - 512 * 1.25) {
	
	hspeed = lerp(hspeed, 0.3, 0.5);
	
}
else {
	
}

if(hit_points <= 0)
	instance_destroy(self)








