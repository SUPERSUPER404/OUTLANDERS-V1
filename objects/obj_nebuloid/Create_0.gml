/// @description Insert description here
//You can write your code in this editor
wave = (global.timer/60) + 1
hit_points = clamp(irandom_range(1,wave), 1, wave + 1)
hit_points_max = hit_points;


current_path = choose(Path, Path2, Path3, Path4, Path5, Path6, Path7, Path8, Path9, Path10, Path11, Path12, Path13, Path14, Path15, Path16,Path17)
speed_current = random_range(0.5, 1);

path_start(current_path, speed_current,path_action_stop,true)

hurt = function(_amount = 1){
	hit_points -= _amount;
	
	if(hit_points <= 0){
	instance_destroy();
	}
}