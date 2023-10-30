/// @description Insert description here
// You can write your code in this editor


if(device_mouse_check_button_pressed(0, mb_left) 
&& device_mouse_x_to_gui(0) > 1240 
&& device_mouse_x_to_gui(0) < 1340
&& device_mouse_y_to_gui(0) > 94
&& device_mouse_y_to_gui(0) < 160) {
	
	if (global.Mythril < 10){
		return	
	}
	


	global.Mythril -= 10;

	with(Obj_Placeable) {
		can_be_seen = true;
	}

	Obj_UI_Mouse.selected_sprite = Spr_lazer_gun_WIP;
	
	global.instance_tower_to_build = Obj_real_tower_TEST;
	
	show_debug_message("POGGERS")	
	
}