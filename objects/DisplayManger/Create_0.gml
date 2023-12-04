
var camera = view_camera[0];

camera_set_view_size(camera, room_width/2, room_height/2);

camera_set_view_pos(
camera, 
room_width/2 - camera_get_view_width(camera)/2 - 300, 
room_height/2 - camera_get_view_height(camera)/2
);
anchor_x = mouse_x;
	anchor_y = mouse_y;
	in_bounds = true