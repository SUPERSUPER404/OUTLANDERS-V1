
draw_self();
//drawing ui with short cut funtions i made


//Cash
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
	 
	 //tower
set_draw(1, c_white, function() {
	 align_set(fa_right, fa_middle);
	 
	 draw_text_ext_transformed(room_width - 96 , 8 , "Tower " , 0, 200, 2, 2, 0)
	 
	 });

//score
set_draw(1, c_white, function() {
	 align_set(fa_left, fa_middle);
	 
	 draw_text_ext_transformed(900 , 8 , "score " + string(global.score), 0, 200, 2, 2, 0)
	 
	 });
	 
	 