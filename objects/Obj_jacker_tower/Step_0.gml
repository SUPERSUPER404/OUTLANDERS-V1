/// @description Insert description here
// You can write your code in this editor

target = collision_circle(x, y, radius, obj_galactron, false, true)	


if (can_shoot == true && instance_exists(target)){
	
	can_shoot = false;
	for(i = 0; i < num_spawned; i ++) {
		
		var inst = instance_create_depth(irandom_range(x - 32, x + 32),y-20,1, obj_galactronGood);
		inst.speed_current = inst.speed_current * (1 + level/2);
		inst.fire_rate *= (1 - 0.25 * level);
			
		
	}
	alarm_set(2, room_speed * rate_of_fire);
	audio_play_sound(Sxf_spawner, 1, false);
	instance_destroy(target)
}
	



if(hit_points <= 0) {
	instance_destroy(self);	
}