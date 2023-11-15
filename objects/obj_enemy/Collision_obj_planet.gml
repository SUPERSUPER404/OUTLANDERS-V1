/// @description Insert description here
// You can write your code in this editor

if(obj_planet.is_enemy) {
	instance_destroy(self)
	obj_planet.is_enemy = false
	global.life = global.life - 1
}