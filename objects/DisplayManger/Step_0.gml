/// @description Insert description here
// You can write your code in this editor

 var camera = view_camera[0];
 var mouse_x_from_center = (window_mouse_get_x() + window_get_width()/2)/16 - window_get_width()/16
 var mouse_y_from_center = (window_mouse_get_y() + window_get_height()/2)/16 - window_get_height()/16

// Camera drag
if(mouse_check_button_pressed(mb_left)) {
	
	//store where mouse was clicked
	anchor_x = mouse_x;
	anchor_y = mouse_y;
	in_bounds = true

}
if(mouse_check_button(mb_left) && in_bounds) {
	
	var x_delta = mouse_x - anchor_x;
	var y_delta = mouse_y - anchor_y;
	
	if(camera_get_view_x(camera) - x_delta > 0 
	&& camera_get_view_x(camera) - x_delta + camera_get_view_width(camera) < room_width 
	&& camera_get_view_y(camera) - y_delta > 0 
	&& camera_get_view_y(camera) - y_delta + camera_get_view_height(camera) < room_height) {
	camera_set_view_pos(
		camera, 
		camera_get_view_x(camera) - x_delta, 
		camera_get_view_y(camera) - y_delta
		);
	}
	else {
		in_bounds = false;
	}
	
}


var zoom_factor = 0.04


// Zoom in
if(mouse_wheel_up()) {
	
	if(camera_get_view_height(camera) * (1 - zoom_factor) > 64 
	&& camera_get_view_width(camera) * (1 - zoom_factor) > 64 * (16/9)
	) {
		
	camera_set_view_size(
	camera, 
	camera_get_view_width(camera) * (1 - zoom_factor),
	camera_get_view_height(camera) * (1 - zoom_factor)
	);
	
	camera_set_view_pos(
	camera, 
	camera_get_view_x(camera) + mouse_x_from_center,
	camera_get_view_y(camera) + mouse_y_from_center
	);
	
	}
	
}

// Zoom out
if(mouse_wheel_down()) {
	
	
	if(camera_get_view_width(camera) * (1 - zoom_factor) < room_width
	&& camera_get_view_height(camera) * (1 - zoom_factor) < room_height
	&& camera_get_view_x(camera) - mouse_x_from_center > 0
	&& camera_get_view_y(camera) - mouse_y_from_center > 0
	&& camera_get_view_x(camera) - mouse_x_from_center + camera_get_view_width(camera) < room_width
	&& camera_get_view_y(camera) - mouse_y_from_center + camera_get_view_height(camera) < room_height
	) {
	
	camera_set_view_pos(
	camera, 
	camera_get_view_x(camera) - mouse_x_from_center,
	camera_get_view_y(camera) - mouse_y_from_center
	);
	
	camera_set_view_size(
	camera, 
	camera_get_view_width(camera) * (1 + zoom_factor),
	camera_get_view_height(camera) * (1 + zoom_factor)
	);
	
	}
	
}

