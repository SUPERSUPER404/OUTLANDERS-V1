/// @description Insert description here
// You can write your code in this editor


//lazer gun
if(device_mouse_check_button_pressed(0, mb_left) 
&& device_mouse_x_to_gui(0) > 1240 
&& device_mouse_x_to_gui(0) < 1340
&& device_mouse_y_to_gui(0) > 94
&& device_mouse_y_to_gui(0) < 160) {
	
	if (global.Mythril < 50){
		return	
	}
	


	global.Mythril -= 50;

	with(obj_Placeable) {
		can_be_seen = true;
	}

	obj_UI_Mouse.selected_sprite = spr_lazer_gun_WIP;
	
	global.instance_tower_to_build = obj_lazer_gun_tower;
	
	show_debug_message("POGGERS")	
	
}
//Mine

if(device_mouse_check_button_pressed(0, mb_left) 
&& device_mouse_x_to_gui(0) > 1240 
&& device_mouse_x_to_gui(0) < 1340
&& device_mouse_y_to_gui(0) > 220
&& device_mouse_y_to_gui(0) < 286) {
	
	if (global.Mythril < 50){
		return	
	}
	


	global.Mythril -= 50;

	with(obj_Placeable) {
		can_be_seen = true;
	}

	obj_UI_Mouse.selected_sprite = spr_tower_money_WIP;
	
	global.instance_tower_to_build = obj_Mythril_tower;
	
	show_debug_message("POGGERS")	
	
}


