/// @description Insert description here
// You can write your code in this editor
canChangeShop = true

if(global.shop_number == 3) {
	
	//Back
	if(device_mouse_check_button_pressed(0, mb_left) 
	&& device_mouse_x_to_gui(0) > 1253
	&& device_mouse_x_to_gui(0) < 1302
	&& device_mouse_y_to_gui(0) > display_get_gui_height() - 64
	&& device_mouse_y_to_gui(0) < display_get_gui_height() - 16
	&& canChangeShop) {
	
		global.shop_number --
		canChangeShop = false
	
	}
	
	//Next
	if(device_mouse_check_button_pressed(0, mb_left) 
	&& device_mouse_x_to_gui(0) > 1302
	&& device_mouse_x_to_gui(0) < 1352
	&& device_mouse_y_to_gui(0) > display_get_gui_height() - 64
	&& device_mouse_y_to_gui(0) < display_get_gui_height() - 16
	&& canChangeShop) {
	
	global.shop_number ++
	canChangeShop = false
	
	}
	
}

if(global.shop_number == 2) {
	
	//Back
	if(device_mouse_check_button_pressed(0, mb_left) 
	&& device_mouse_x_to_gui(0) > 1253
	&& device_mouse_x_to_gui(0) < 1302
	&& device_mouse_y_to_gui(0) > display_get_gui_height() - 64
	&& device_mouse_y_to_gui(0) < display_get_gui_height() - 16
	&& canChangeShop) {
	
		global.shop_number --
		canChangeShop = false
	
	}
	
	//Next
	if(device_mouse_check_button_pressed(0, mb_left) 
	&& device_mouse_x_to_gui(0) > 1302
	&& device_mouse_x_to_gui(0) < 1352
	&& device_mouse_y_to_gui(0) > display_get_gui_height() - 64
	&& device_mouse_y_to_gui(0) < display_get_gui_height() - 16
	&& canChangeShop) {
	
	global.shop_number ++
	canChangeShop = false
	
	}
	
}

if(global.shop_number == 1 && canChangeShop) {
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
	
}

// Richochet
if(device_mouse_check_button_pressed(0, mb_left) 
&& device_mouse_x_to_gui(0) > 1240 
&& device_mouse_x_to_gui(0) < 1340
&& device_mouse_y_to_gui(0) > 334
&& device_mouse_y_to_gui(0) < 334 + 64) {
	
	if (global.Mythril < 50){
		return	
	}
	


	global.Mythril -= 100;

	with(obj_Placeable) {
		can_be_seen = true;
	}

	obj_UI_Mouse.selected_sprite = spr_richochet_tower;
	
	global.instance_tower_to_build = obj_richochet_tower;
	
}

// Next
if(device_mouse_check_button_pressed(0, mb_left) 
&& device_mouse_x_to_gui(0) > 1240 - 16
&& device_mouse_x_to_gui(0) < 1340 + 16
&& device_mouse_y_to_gui(0) > display_get_gui_height() - 64
&& device_mouse_y_to_gui(0) < display_get_gui_height() - 16) {
	
	global.shop_number ++
	canChangeShop = false
	alarm[2] = room_speed * 0.25
	
	}

}


show_debug_message(global.shop_number)