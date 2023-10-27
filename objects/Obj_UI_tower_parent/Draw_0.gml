if(parent != noone) { 

draw_self();

align_set(fa_center,fa_middle) 
// NAME

draw_text(x +30 , y - 24 , name);

//COST
draw_text(x +30 , y ,"Price: " + string(cost));

}
