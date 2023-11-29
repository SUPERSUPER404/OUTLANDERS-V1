// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_instance_nearest(){

	var nearest = noone;
	dist = obj_richochet_tower.radius
	
	for (ii=0; ii<instance_number(obj_enemy); ii+=1) {
	
    var o, d;
    o = instance_find(obj_enemy, ii);
    d = point_distance(self.x, self.y, o.x, o.y);
	
    if (d <= obj_richochet_tower.radius) { 
		if (nearest == noone || d < dist) { 
			nearest = o; 
			dist = d; } }
	}
	
	return nearest;
}