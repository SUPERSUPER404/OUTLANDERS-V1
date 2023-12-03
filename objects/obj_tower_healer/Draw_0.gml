/// @description Insert description here
// You can write your code in this editor

    draw_self()
	
	
// when mouse is over tower
if (hover == true){
	
	draw_set_color(c_yellow);
	draw_circle(x,y,radius,true);
	draw_set_color(c_white);
	
	draw_healthbar(
	self.x - 32, self.y + 36,
	self.x + 32, self.y + 40,
	hit_points,
	c_black, c_red, c_green,
	0, false, true
	);
	
}








