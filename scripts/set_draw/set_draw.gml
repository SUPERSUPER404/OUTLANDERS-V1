// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function set_draw(alpha, color, callback){
var _alpha = draw_set_alpha(true);
var _color = draw_get_color();

draw_set_alpha(alpha);
draw_set_color(color);
// short cut to set colors and change them
callback();

draw_set_alpha(true);
draw_set_color(_color);
}