/// @description Insert description here
// You can write your code in this editor


image_xscale = width/32
image_yscale = height/8

if(image_angle == 0) {
	image_angle = point_direction(laser_spawn_x, laser_spawn_y, mouse_x, mouse_y);
}