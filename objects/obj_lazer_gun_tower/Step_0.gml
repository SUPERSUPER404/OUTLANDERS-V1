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
		alarm_set(2, room_speed * rate_of_fire);
		
		var instance_bullet = instance_create_depth(x,y, depth - 1, obj_Bullet_player)
		instance_bullet.direction = point_direction(x,y,target.x,target.y)
		instance_bullet.image_angle =instance_bullet.direction;
		instance_bullet.speed = 10;
		instance_bullet._damage = bullet_damage;
		}
	}
}



