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
closest = noone;
dist = obj_richochet_tower.radius * 1.25;

var _list = ds_list_create();
var _num = collision_circle_list(x, y, obj_richochet_tower.radius * 1.25, obj_enemy, false, true, _list, false);
if (_num > 0)
{
    for (var j = 0; j < _num; ++j;)
    {
		
		if(point_distance(xx, yy, _list[| j].x, _list[| j].y) < dist && point_distance(xx, yy, _list[| j].x, _list[| j].y) > 0 && !array_contains(array, _list[| j]) && _list[| j].object_index != obj_galactor) {
			closest = _list[| j];
			dist = point_distance(xx, xx, _list[| j].x, _list[| j].y);
			array[i] = _list[| j];
		}
	}
	nearest = closest
}

return nearest;
ds_list_destroy(_list);
}