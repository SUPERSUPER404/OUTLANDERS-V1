/// @description Insert description here
// You can write your code in this editor

x = lerp(x, position_current_x, 0.06);
y = lerp(y, position_current_y, 0.06);



//close
if(device_mouse_check_button_pressed(0, mb_left) 
&& device_mouse_x_to_gui(0) > 1180 
&& device_mouse_x_to_gui(0) < 1275
&& device_mouse_y_to_gui(0) > 670
&& device_mouse_y_to_gui(0) < 740) {
	
 position_current_x = position_hidden_x;
 position_current_y = position_hidden_y;

}

//upgrade
if(device_mouse_check_button_pressed(0, mb_left) 
&& device_mouse_x_to_gui(0) > 1180 - 125 
&& device_mouse_x_to_gui(0) < 1275 - 125
&& device_mouse_y_to_gui(0) > 670
&& device_mouse_y_to_gui(0) < 740) {
	if(global.Mythril >= global.selected_tower.upgrade_price){
global.Mythril -= global.selected_tower.upgrade_price;
global.selected_tower.upgrade();
towers_select(global.selected_tower);
	}

}