/// @description Insert description here
// You can write your code in this editor

draw_self();

var amount = (hit_points/hit_points_max) * 100;

var sprite_half = sprite_width / 2;

draw_healthbar(x - sprite_half, y + 15, x + sprite_half, y + 20, amount, c_black, c_red, c_red, 0, true, false);






