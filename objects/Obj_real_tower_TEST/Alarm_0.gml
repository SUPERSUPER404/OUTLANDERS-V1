/// @description Insert description here
// You can write your code in this editor


closest = instance_nearest(self.x, self.y, obj_nebuloid)
if(distance_to_object(closest) < range) {
	instance_destroy(closest)	
	alarm[0] = room_speed * 0.5
	global.score += 1
}
else {
	// Feather disable once GM1024
	alarm[0] = room_speed * 0.25	
}