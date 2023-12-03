/// @description Insert description here
// You can write your code in this editor

alarm[1] = room_speed * 1;

var _list = ds_list_create();
var _num = collision_circle_list(x, y, radius, obj_Tower_parent, false, true, _list, false);
if (_num > 0)
{
    for (var i = 0; i < _num; ++i;)
    {
		if(_list[| i].hit_points < _list[| i].hit_points_max)
			_list[| i].hit_points ++;
    }
}
ds_list_destroy(_list);






