/// @description Insert description here
// You can write your code in this editor
var instance_array = array_create(5, 0)

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
		
		for(i = 0; i < richochet; i ++) {
		
			if(i == 0) {
				
				nextTarget = instance_nearest_notme(self.x, self.y, obj_nebuloid, target, instance_array, i)
				var inst = instance_create_layer(x, y - 22, "Instances", obj_laser_red,
				{ width : point_distance(self.x, self.y - 22, nextTarget.x, nextTarget.y),
				height : 8,
				laser_spawn_x : self.x,
				laser_spawn_y : self.y - 22,
				image_angle : point_direction(self.x, self.y- 22, nextTarget.x, nextTarget.y) }
				);
				show_debug_message(richochet)
				nextTarget.hit_points -= 0.5
			
			}
			
			else {
				instance_array[i] = instance_number(target)
				
				nextTarget = instance_nearest_notme(target.x, target.y, obj_nebuloid, target, instance_array, i)
				
				instance_create_layer(target.x, target.y, "Instances", obj_laser_red,
				{ width: point_distance(target.x, target.y, nextTarget.x, nextTarget.y),
				height : 8,
				laser_spawn_x : target.x,
				laser_spawn_y : target.y,
				image_angle : point_direction(target.x, target.y, nextTarget.x, nextTarget.y) }
				);
				
				if(nextTarget != noone)
					nextTarget.hit_points -= 0.5
					
				show_debug_message(nextTarget.x)
				
				target = nextTarget
				
			}
			
		}
		
	}
  }
  
  target = noone

}