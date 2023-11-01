

if(global.instance_tower_to_build != noone) {
	instance_create_depth(x, y, 0, global.instance_tower_to_build);
	
	
	global.instance_tower_to_build = noone;
	
	
	obj_UI_Mouse.selected_sprite = noone;
	
 instance_destroy(self);
	
	
	
	with(obj_Placeable){
	can_be_seen = false;	
	}
}