/// @description Insert description here
// You can write your code in this editor

if(dir == 1)
	image_angle += random_range(0.25, 0.5)
else
	image_angle -= random_range(0.25, 0.5)

if(self.y > room_height + 100) {
	instance_destroy(self)	
}


if(hit_points <= 0)
	instance_destroy(self);