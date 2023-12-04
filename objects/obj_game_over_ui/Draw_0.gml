/// @description Insert description here
// You can write your code in this editor

draw_set_valign(fa_center)
draw_set_halign(fa_center)
draw_set_font(fnt_outlanders)

draw_text(room_width/2 + 16, 192,"Score: " + string(global.score))

draw_set_color(c_red)
draw_text_transformed(288, 80,"High Score: " + string(global.high_score), 0.5, 0.5, 0)

draw_set_color(c_white)
draw_set_font(fnt_normal)
