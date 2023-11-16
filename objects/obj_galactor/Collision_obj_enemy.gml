/// @description Insert description here
// You can write your code in this editor

if(canShoot) {
	
var inst = instance_create_layer(x, y, "Instances", obj_laser_red,
{ width : point_distance(self.x, self.y, obj_planet.x, obj_planet.y),
height : 12, laser_spawn_x : self.x, laser_spawn_y : self.y,
image_angle : point_direction(self.x, self.y, obj_planet.x, obj_planet.y) }
);

image_angle = point_direction(self.x, self.y, obj_planet.x, obj_planet.y)
canShoot = false
alarm[1] = shotDelay*room_speed
}





