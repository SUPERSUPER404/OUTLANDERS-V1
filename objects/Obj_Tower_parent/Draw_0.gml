
draw_set_color(c_white);
    draw_self()
	
	
// when mouse is over tower
if (hover == true){
	
	draw_set_color(c_lime);
	draw_circle(x,y,radius,true);
	draw_set_color(c_white);
	
	draw_healthbar(
	self.x - 32, self.y + 36,
	self.x + 32, self.y + 40,
	health,
	c_black, c_red, c_green,
	0, false, true
	);
	
}