/// @description Insert description here
// You can write your code in this editor


draw_set_alpha(1)
draw_set_color(c_white)
draw_sprite(spr_UI_Panel,0,bbox_left,bbox_top)
draw_sprite(Spr_UI_close,0,bbox_right+400,bbox_top-50)
draw_sprite(Spr_upgrade,0,bbox_right+300,bbox_top-50)
draw_set_halign(fa_left)

draw_text(
bbox_left - 820,
bbox_top -100,
"Tower: " + string(tower_name) + "(Level: " + string(tower_level) + ")"
)

draw_text(
bbox_left - 820 ,
bbox_top -100 + 30,
"Current Damage: " + string(tower_damge) 
)

draw_text(
bbox_left - 820 ,
bbox_top -100 + 30 + 30,
"Current Radius: " + string(tower_radius) 
)

draw_text(
bbox_left - 820 ,
bbox_top -100 + 30 + 30 + 30,
"Current Fire Rate: " + string(tower_fire_rate) 
)

draw_text(
bbox_left - 820 + 200 ,
bbox_top -100 + 30 + 30,
"UPGRADE COST: " + string(tower_upgrade_cost) 
)