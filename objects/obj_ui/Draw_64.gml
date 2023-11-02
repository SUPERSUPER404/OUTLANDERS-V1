/// @description Insert description here
// You can write your code in this editor


draw_set_color(c_ltgrey)
draw_rectangle(display_get_gui_width() - 128, 0, display_get_gui_width(), display_get_gui_height(), false)
draw_sprite(spr_UI_bar, 0, 0, 0)

draw_set_color(c_black)
draw_text_transformed(display_get_gui_width() - 96, 64, "SHOP", 2, 2, 0)


set_draw(1, c_white, function() {
	 align_set(fa_left, fa_middle);
	 
	 draw_text_ext_transformed(16 , 8 , "Mythril " + string(global.Mythril), 0, 200, 2, 2, 0)
	 
	 });
	 
	 //timer
set_draw(1, c_white, function() {
	 align_set(fa_left, fa_middle);
	 
	 draw_text_ext_transformed(352 , 8 , "Timer " + string(global.timer), 0, 200, 2, 2, 0)
	 
	 });
	 
	 //Lives
set_draw(1, c_white, function() {
	 align_set(fa_left, fa_middle);
	 
	 draw_text_ext_transformed(608 , 8 , "Live " + string(global.life), 0, 200, 2, 2, 0)
	 
	 });


set_draw(1, c_white, function() {
	 align_set(fa_left, fa_middle);
	 
	 draw_text_ext_transformed(900 , 8 , "score " + string(global.score), 0, 200, 2, 2, 0)
	 
	 });
	  //year
	 set_draw(1, c_white, function() {
	 align_set(fa_left, fa_middle);
	 
	 draw_text_ext_transformed(1200 , 8 , "Year " + string(global.year), 0, 200, 2, 2, 0)
	 
	 });
	 
	 
	 
draw_sprite_stretched(spr_lazer_gun_WIP, 0, display_get_gui_width() - 96, 96, 64, 64)
draw_rectangle(display_get_gui_width() - 96, 96, display_get_gui_width() - 32, 96+64,true)
draw_text(display_get_gui_width() - 120, 96+64+32, "Laser Turret\nCost:50 ")


draw_sprite_stretched(spr_tower_money_WIP, 0, display_get_gui_width() - 96, 220, 64, 64)
draw_rectangle(display_get_gui_width() - 96, 220, display_get_gui_width() - 32, 220+64,true)
draw_text(display_get_gui_width() - 120, 220+64+32, "Mine \nCost:50 ")

