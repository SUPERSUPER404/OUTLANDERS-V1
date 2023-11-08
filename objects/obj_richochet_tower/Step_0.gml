/// @description Insert description here
// You can write your code in this editor

if(target == noone){
target = collision_circle(x, y, radius, obj_nebuloid, false, true)	
} else {
	if(instance_exists(target) == false){
	target = noone;	
	}else{
		
		//image_angle = point_direction(-x,-y,-target.x,-target.y)
		
		if (can_shoot == true){
		can_shoot = false;
		alarm_set(2, room_speed / rate_of_fire);
		
		var instance_array = array_create(5, noone)
		
		for(i = 0; i < richochet; i ++) {
		
			if(i == 0) {
				
				instance_array[i] = target
				
				var inst = instance_create_layer(x, y, "Instances", obj_laser_red,
				{ width : point_distance(self.x, self.y, target.x, target.y),
				height : 8,
				laser_spawn_x : self.x,
				laser_spawn_y : self.y }
				);
				show_debug_message(richochet)
				target.hit_points -= 1
			
			}
			
			else {
				instance_array[i] = target
				
				nextTarget = instance_nearest_notme(target.x, target.y, obj_nebuloid, target, instance_array)
				
				instance_create_layer(target.x, target.y, "Instances", obj_laser_red,
				{ width: point_distance(target.x, target.y, nextTarget.x, nextTarget.y),
				height : 8,
				laser_spawn_x : target.x,
				laser_spawn_y : target.y }
				);
				
				if(nextTarget != noone)
					nextTarget.hit_points -= 1
					
				show_debug_message(nextTarget.x)
				
				target = nextTarget
				
			}
			
		}
		
	}
  }

}


