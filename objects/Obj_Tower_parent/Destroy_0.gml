/// @description Insert description here
// You can write your code in this editor

if(onPlanet) {
	instance_create_layer(self.x, self.y, "Instances", obj_Placeable_main);
}
else {
	instance_create_layer(self.x, self.y, "Instances", obj_Placeable_off_planet);
}