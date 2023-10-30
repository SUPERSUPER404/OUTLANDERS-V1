/// @description Insert description here
// You can write your code in this editor

var camera = view_camera[0];

camera_set_view_size(camera, room_width/2, room_height/2);

camera_set_view_pos(
camera, 
room_width/2 - camera_get_view_width(camera)/2, 
room_height/2 - camera_get_view_height(camera)/2
);