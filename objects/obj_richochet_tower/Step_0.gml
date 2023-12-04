/// @description Insert description here
// You can write your code in this editor

var instance_array = array_create(richochet, noone)

nextTarget = noone

if(target == noone || target != enemy_instance_nearest()){
	target = enemy_instance_nearest()	
} 
else {
	if(instance_exists(target) == false){
		target = noone;	
	}else{
		
		if (can_shoot == true){
		can_shoot = false;
		alarm_set(2, room_speed / rate_of_fire);
		audio_play_sound(Sxf_lightingtower, 1, false);
		for(i = 0; i < richochet; i ++) {
		
			if(i == 0) {
				
				instance_array[0] = instance_number(target)
				
				var inst = instance_create_layer(x, y - 20, "Instances", obj_laser_red,
				{ width : point_distance(self.x, self.y - 20, target.x, target.y),
				height : 8,
				laser_spawn_x : self.x,
				laser_spawn_y : self.y - 20,
				image_angle : point_direction(self.x, self.y- 20, target.x, target.y) }
				);
	
				target.hit_points -= bullet_damage
		
				nextTarget = instance_nearest_notme(self.x, self.y, obj_enemy, target, instance_array, i)
				show_debug_message(nextTarget);
			
			}
			
			else {
				
				instance_array[i] = instance_number(target)
				
				nextTarget = instance_nearest_notme(target.x, target.y, obj_enemy, target, instance_array, i)
				
				if(nextTarget != noone) {
				
				instance_create_layer(target.x, target.y, "Instances", obj_laser_red,
				{ width: point_distance(target.x, target.y, nextTarget.x, nextTarget.y),
				height : 8,
				laser_spawn_x : target.x,
				laser_spawn_y : target.y,
				image_angle : point_direction(target.x, target.y, nextTarget.x, nextTarget.y) }
				);
				
	
					nextTarget.hit_points -= bullet_damage
					
					target = nextTarget
				
				}
				else {
					
					break;	
				
				}

				
			}
			
		}
		
	}
  }
  
  target = noone;

}

array_delete(instance_array, all, 1)
event_inherited();