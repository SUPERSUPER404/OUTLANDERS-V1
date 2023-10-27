

if(global.instance_tower_to_build != noone) {
	instance_create_depth(x-27, y-27, 0, global.instance_tower_to_build);
	
	
	global.instance_tower_to_build = noone;
	
	
	Obj_UI_Mouse.selected_sprite = noone;
	
 instance_destroy(self);
	
	
	
	with(Obj_Placeable){
	can_be_seen = false;	
	}
}