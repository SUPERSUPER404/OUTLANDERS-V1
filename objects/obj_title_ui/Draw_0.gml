/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_outlanders);
draw_set_color(c_yellow);
draw_set_alpha(0.5);
draw_set_valign(fa_center);
draw_set_halign(fa_center);

draw_text(room_width/2, room_height/2, "OUTLANDERS");

draw_set_color(c_white);
draw_set_alpha(1);
draw_text(room_width/2, room_height - 128, "Press Space to Play");
draw_set_font(fnt_normal);


