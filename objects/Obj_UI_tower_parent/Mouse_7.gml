//cheak prise
if (global.Mythril < cost){
	return	
}
	


global.Mythril -= cost;

with(obj_Placeable) {
	can_be_seen = true;
}


parent.hide();

obj_UI_Mouse.selected_sprite = image;