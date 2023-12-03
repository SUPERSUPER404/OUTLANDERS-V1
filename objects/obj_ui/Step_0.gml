/// @description Insert description here
// You can write your code in this editor
canChangeShop = true

if(global.shop_number == 2) {
	//spawner
	if(device_mouse_check_button_pressed(0, mb_left) 
&& device_mouse_x_to_gui(0) > 1240 
&& device_mouse_x_to_gui(0) < 1340
&& device_mouse_y_to_gui(0) > 94
&& device_mouse_y_to_gui(0) < 160) {
	if (global.Mythril < 400){
		return;
		audio_play_sound(Sxf_cantbuy, 1, false);
	}
	


	global.Mythril -= 400;
    audio_play_sound(Sxf_towerbuying, 1, false);
	if(instance_exists(obj_Placeable_main))
		obj_Placeable_main.can_be_seen = true;
	if(instance_exists(obj_Placeable_off_planet))
		obj_Placeable_off_planet.can_be_seen = true;

	obj_UI_Mouse.selected_sprite = Spr_jacker;
	
	global.instance_tower_to_build = Obj_jacker_tower;	
	
}

//Back
if(device_mouse_check_button_pressed(0, mb_left) 
&& device_mouse_x_to_gui(0) > 1240 - 16
&& device_mouse_x_to_gui(0) < 1340 + 16
&& device_mouse_y_to_gui(0) > display_get_gui_height() - 64
&& device_mouse_y_to_gui(0) < display_get_gui_height() - 16) {
	
	global.shop_number --;
	canChangeShop = false;
	alarm[2] = room_speed * 0.25;
	audio_play_sound(Sxf_shopmoving, 1, false);
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
		return;
		audio_play_sound(Sxf_cantbuy, 1, false);
	}
	


	global.Mythril -= 50;
    audio_play_sound(Sxf_towerbuying, 1, false);
	if(instance_exists(obj_Placeable_main))
		obj_Placeable_main.can_be_seen = true;
	if(instance_exists(obj_Placeable_off_planet))
		obj_Placeable_off_planet.can_be_seen = true;

	obj_UI_Mouse.selected_sprite = spr_lazer_gun;
	
	global.instance_tower_to_build = obj_lazer_gun_tower;	
	
}




//Mine

if(device_mouse_check_button_pressed(0, mb_left) 
&& device_mouse_x_to_gui(0) > 1240 
&& device_mouse_x_to_gui(0) < 1340
&& device_mouse_y_to_gui(0) > 220
&& device_mouse_y_to_gui(0) < 286) {
	
	if (global.Mythril < 50){
		return;
		audio_play_sound(Sxf_cantbuy, 1, false);
	}
	


	global.Mythril -= 50;
    audio_play_sound(Sxf_towerbuying, 1, false);
	if(instance_exists(obj_Placeable_main))
		obj_Placeable_main.can_be_seen = true;

	obj_UI_Mouse.selected_sprite = spr_tower_money;
	
	global.instance_tower_to_build = obj_Mythril_tower;
	
}




// Richochet
if(device_mouse_check_button_pressed(0, mb_left) 
&& device_mouse_x_to_gui(0) > 1240 
&& device_mouse_x_to_gui(0) < 1340
&& device_mouse_y_to_gui(0) > 334
&& device_mouse_y_to_gui(0) < 334 + 64) {
	
	if (global.Mythril < 200){
		return;
		audio_play_sound(Sxf_cantbuy, 1, false);
	}
	


	global.Mythril -= 200;
    audio_play_sound(Sxf_towerbuying, 1, false);
	if(instance_exists(obj_Placeable_main))
		obj_Placeable_main.can_be_seen = true;
	if(instance_exists(obj_Placeable_off_planet))
		obj_Placeable_off_planet.can_be_seen = true;

	obj_UI_Mouse.selected_sprite = spr_richochet_tower;
	
	global.instance_tower_to_build = obj_richochet_tower;
	
}





//slow tower
if(device_mouse_check_button_pressed(0, mb_left) 
&& device_mouse_x_to_gui(0) > 1240 
&& device_mouse_x_to_gui(0) < 1340
&& device_mouse_y_to_gui(0) > 446
&& device_mouse_y_to_gui(0) < 510) {
	
	if (global.Mythril < 200){
		return;
		audio_play_sound(Sxf_cantbuy, 1, false);
	}
	


	global.Mythril -= 200;
    audio_play_sound(Sxf_towerbuying, 1, false);
	if(instance_exists(obj_Placeable_main))
		obj_Placeable_main.can_be_seen = true;
	if(instance_exists(obj_Placeable_off_planet))
		obj_Placeable_off_planet.can_be_seen = true;

	obj_UI_Mouse.selected_sprite = Spr_tower_slow;
	
	global.instance_tower_to_build = Obj_slow_tower;	
	
}


//trap tower
if(device_mouse_check_button_pressed(0, mb_left) 
&& device_mouse_x_to_gui(0) > 1240 
&& device_mouse_x_to_gui(0) < 1340
&& device_mouse_y_to_gui(0) > 592
&& device_mouse_y_to_gui(0) < 658) {
	
	if (global.Mythril < 150){
		return;
		audio_play_sound(Sxf_cantbuy, 1, false);
	}
	


	global.Mythril -= 150;
    audio_play_sound(Sxf_towerbuying, 1, false);
	if(instance_exists(obj_Placeable_main))
		obj_Placeable_main.can_be_seen = true;
	if(instance_exists(obj_Placeable_off_planet))
		obj_Placeable_off_planet.can_be_seen = true;

	obj_UI_Mouse.selected_sprite = Spr_tower_bomb;
	
	global.instance_tower_to_build = Obj_tower_bomb;	
	
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
	audio_play_sound(Sxf_shopmoving, 1, false);
	
	}

}







if(global.life <= 0){
	audio_play_sound(Sxf_gameover, 1, false);
	room_restart();
	room_goto(Rm_GameOver)
}