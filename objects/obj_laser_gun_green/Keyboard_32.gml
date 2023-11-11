/// @description Insert description here
// You can write your code in this editor


if(!instance_exists(obj_laser_green_big) && canShoot) {
	
var inst = instance_create_layer(x, y, "Instances", obj_laser_green_big,
{ width : point_distance(self.x, self.y, mouse_x, mouse_y),
height : 16, laser_spawn_x : self.x, laser_spawn_y : self.y,
image_angle : point_direction(self.x, self.y, mouse_x, mouse_y) }
);

image_angle = point_direction(self.x, self.y, mouse_x, mouse_y)

canShoot = false

alarm[0] = room_speed * shotDelay;

}