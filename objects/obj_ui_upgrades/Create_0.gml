
bb1 = bbox_right+125
bb2 = bbox_top-50









tower_name = "default tower";
tower_level = -99;
tower_damge = -9
tower_radius = -9
tower_upgrade_cost = -999
tower_fire_rate = -199

// Hidden position
position_hidden_x = 832;
position_hidden_y = 960;

// Showen Position
position_shown_x = 832;
position_shown_y = 760;

//current
position_current_x = position_hidden_x;
position_current_y = position_hidden_y;

//position now

//x = position_hidden_x;
//y = position_hidden_y;

// close button
//instance_button_close = instance_create_depth(bbox_left,bbox_top, depth -1 , Obj_UI_close);
//instance_button_close.parent = id;



// function

hide = function(){
 position_current_x = position_hidden_x;
 position_current_y = position_hidden_y;
}

show = function(){
 position_current_x = position_shown_x;
 position_current_y = position_shown_y;
}

