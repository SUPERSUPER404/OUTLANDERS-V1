
event_inherited();
global.bomb_dmg = 1
radius = 250;
bullet_damage = 60*global.bomb_dmg;
rate_of_fire = 5;
upgrade_price = 200;

name = "STORM Tower";

upgrade = function(){
	// same for each tower
	level += 1;
	upgrade_price = upgrade_price + upgrade_price
	//diff for each tower
	global.bomb_dmg += 1
	
}