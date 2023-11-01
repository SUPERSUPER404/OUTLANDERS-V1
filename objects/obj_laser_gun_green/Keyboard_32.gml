/// @description Insert description here
// You can write your code in this editor


if(!instance_exists(obj_laser_green)) {
	
var inst = instance_create_layer(x, y, "Instances", obj_laser_green);
with (inst)
{
    inst.width = point_distance(self.x, self.y, mouse_x, mouse_y);
	inst.height = 16;
	inst.laser_spawn_x = self.x;
	inst.laser_spawn_y = self.y;
}

}