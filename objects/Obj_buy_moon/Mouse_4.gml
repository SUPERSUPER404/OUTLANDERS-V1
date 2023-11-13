/// @description Insert description here
// You can write your code in this editor
if (global.Mythril < 100){
		return	
	}
	


	global.Mythril -= 100;
instance_create_depth(x+32,y,1,obj_Placeable_main)
instance_create_depth(x-32,y,1,obj_Placeable_main)
instance_create_depth(x,y+32,1,obj_Placeable_main)
instance_create_depth(x,y-32,1,obj_Placeable_main)
instance_destroy();