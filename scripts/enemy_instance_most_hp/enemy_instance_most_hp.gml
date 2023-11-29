// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_instance_most_hp(){

	var most = noone;
	
	var most_hp = 0
	
	for (ii=0; ii<instance_number(obj_enemy); ii+=1) {
	
    var o, hp;
    o = instance_find(obj_enemy, ii);
    hp = o.hit_points
	
    if (d <= obj_richochet_tower.radius) { 
		if (most == noone || hp > most_hp) { 
			most = o; 
			most_hp = hp } }
	}
	
	return nearest;

}