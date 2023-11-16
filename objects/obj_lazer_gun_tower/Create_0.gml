
event_inherited();

name = "Lazer Tower"
level = 1;

upgrade_price = 50;
bullet_damage = 50;

rate_of_fire = .5;

radius = 175

upgrade = function(){
	// same for each tower
	level += 1;
	upgrade_price = upgrade_price + upgrade_price
	//diff for each tower
	bullet_damage += 10
	rate_of_fire = rate_of_fire / 1.5
	
}