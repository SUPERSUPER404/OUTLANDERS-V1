/// @description Insert description here
// You can write your code in this editor

		if (can_shoot == true){
		can_shoot = false;
		alarm_set(2, room_speed * rate_of_fire);
		instance_create_depth(x,y-20,1,obj_galactronGood)
		audio_play_sound(Sxf_spawner, 1, false);
		}
	



if(hit_points <= 0) {
	instance_destroy(self);	
}