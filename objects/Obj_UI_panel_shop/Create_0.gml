// Hidden position
position_hidden_x = 1440;
position_hidden_y = 320;

// Showen Position
position_shown_x = 1280;
position_shown_y = 320;

//current
position_current_x = position_hidden_x;
position_current_y = position_hidden_y;

//position now

x = position_hidden_x;
y = position_hidden_y;

// close button
instance_button_close = instance_create_depth(x,y, depth -1 , Obj_UI_close);
instance_button_close.parent = id;

//lazer tower
instance_tower_lazergun = instance_create_depth(x,y, depth-1 , Obj_tower_lazer_UI);
instance_tower_lazergun.parent = id;

//money tower
instance_tower_money = instance_create_depth(x,y, depth-1 , Obj_tower_money_UI);
instance_tower_money.parent = id;

// function

hide = function(){
 position_current_x = position_hidden_x;
 position_current_y = position_hidden_y;
}

show = function(){
 position_current_x = position_shown_x;
 position_current_y = position_shown_y;
}