// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function towers_select(_tower){
Towers_deselect()

global.selected_tower = _tower;
global.selected_tower.is_selected = true;
obj_ui_upgrades.tower_name = global.selected_tower.name
obj_ui_upgrades.tower_level = global.selected_tower.level
obj_ui_upgrades.tower_damge = global.selected_tower.bullet_damage
obj_ui_upgrades.tower_radius = global.selected_tower.radius
obj_ui_upgrades.tower_upgrade_cost = global.selected_tower.upgrade_price
obj_ui_upgrades.tower_fire_rate = global.selected_tower.rate_of_fire
obj_ui_upgrades.show();
}


function Towers_deselect(){
if(global.selected_tower != noone){
global.selected_tower.is_selected = false;
}

global.selected_tower = noone;
}