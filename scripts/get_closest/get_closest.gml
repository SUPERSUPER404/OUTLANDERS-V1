// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_closest(){

	var min_distance = room_width;
	var closest = id;

	with (object_index)
	{
	    var distance = point_distance(other.x, other.y, x, y);
		if (distance < min_distance && distance != 0)
		{
			min_distance = distance;
			closest = id;
		}
	}

}