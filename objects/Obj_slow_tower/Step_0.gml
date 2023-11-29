/// @description Insert description here
// You can write your code in this editor
if(! can_shoot) {
return;	
}


var _ds_enemies = ds_list_create();
var _num = collision_circle_list(x,y,radius,obj_enemy,false,true,_ds_enemies,false)

if(_num > 0){
for	(var index = 0; index < _num; index++) {
	_ds_enemies[| index].slow();
}
alarm_set(2, rate_of_fire)
can_shoot = false
}

ds_list_destroy(_ds_enemies);