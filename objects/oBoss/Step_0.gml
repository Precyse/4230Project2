/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if canFire {
	var rand = irandom_range(-100,100)
	var farBullet = instance_create_layer(x, y+rand,"Instances",oBossBullet);
	farBullet.speed = -5;
	farBullet.vspeed = 5
	canFire = false;
	alarm[0] = 120;


}
