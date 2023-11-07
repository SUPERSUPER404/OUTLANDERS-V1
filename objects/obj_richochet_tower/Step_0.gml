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
			
		if(richochet == 5) {
			var inst = instance_create_layer(x, y, "Instances", obj_laser_red,
			{ width : point_distance(self.x, self.y, target.x, target.y),
			height : 8,
			laser_spawn_x : self.x,
			laser_spawn_y : self.y }
			);
			richochet -= 1
			show_debug_message(richochet)
		
		}
		while(richochet > 0) {
			
				nextTarget = instance_nearest(target.x, target.y, obj_nebuloid)
				var inst = instance_create_layer(target.x, target.y, "Instances", obj_laser_red,
				{ width : point_distance(target.x, target.y, nextTarget.x, nextTarget.y),
				height : 8,
				laser_spawn_x : target.x,
				laser_spawn_y : target.y }
				);
				richochet -= 1
				target = nextTarget
				show_debug_message(richochet)
			
			}
			
		richochet = 5
		
		}
	}
}




