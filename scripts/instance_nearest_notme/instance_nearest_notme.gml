// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function instance_nearest_notme(x, y, object, instance, array, i)
{
var xx, yy, obj, nearest;
xx = argument[0];
yy = argument[1];
obj = argument[2];
array = argument[4];
instance = argument[3];
nearest = noone;
dist = 1;

for (ii=0; ii<instance_number(obj); ii+=1) {
	
    var o, d;
    o = instance_find(obj, ii);
    d = point_distance(xx, yy, o.x, o.y);
    if (d != 0 && o != id && !array_contains(array, ii) && d <= obj_richochet_tower.radius * 1.25) { 
		if (nearest == noone || d < dist) { 
			nearest = o; dist = d; 
			array[i] = ii 
			} 
		}
  }
	
if(nearest != noone) {
	return nearest;
}
else {
	return noone;	
  }

}