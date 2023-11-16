loop = 0;
while (loop <= global.year){
var nebuloid = instance_create_layer(random_range(1,500), random_range(1,500), "Instances", obj_nebuloid)
nebuloid.hspeed = 6
loop = loop + 1
}
loop = 0;
alarm[0] = room_speed * 0.5
