/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_outlanders);
draw_set_color(c_yellow);
draw_set_alpha(0.5);

draw_text(room_width/2, 64, "Select Difficulty");

draw_set_halign(fa_left);
draw_set_color(c_red);
draw_text(64, room_height - 64, "Highscore: " + string(global.high_score));
draw_set_halign(fa_center);

draw_set_alpha(1);
draw_set_color(c_white);
draw_set_font(fnt_normal);
