

if(global.instance_tower_to_build != noone) {
	instance_create_depth(x, y, 0, global.instance_tower_to_build);
	instance_create_depth(x, y + 16, 1, obj_platform);
	
	
	global.instance_tower_to_build = noone;
	
	
	obj_UI_Mouse.selected_sprite = noone;
	
 instance_destroy(self);
	
	
	
	with(obj_Placeable_main){
	can_be_seen = false;	
	}
	with(obj_Placeable_off_planet) {
	can_be_seen = false;
	}
}