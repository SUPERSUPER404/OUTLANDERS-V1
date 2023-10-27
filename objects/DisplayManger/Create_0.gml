/// @description Insert description here
// You can write your code in this editor

var camera = view_camera[0];

camera_set_view_size(camera, room_width/2, room_height/2);

<<<<<<< Updated upstream
camera_set_view_pos(camera,
=======
camera_set_view_pos(
camera, 
>>>>>>> Stashed changes
room_width/2 - camera_get_view_width(camera)/2, 
room_height/2 - camera_get_view_height(camera)/2
);

