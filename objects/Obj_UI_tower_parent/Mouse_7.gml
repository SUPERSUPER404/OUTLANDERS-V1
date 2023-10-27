//cheak prise
if (global.Mythril < cost){
	return	
}
	


global.Mythril -= cost;

with(Obj_Placeable) {
	can_be_seen = true;
}


parent.hide();

Obj_UI_Mouse.selected_sprite = image;