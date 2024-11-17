/// @description Insert description here
// You can write your code in this editor

//Fire up and down bullets
if canFire1 {
	var rand = irandom_range(-100,100)
	var rand2 = irandom_range(1,2)
	var bullet = instance_create_layer(x, y+rand,"Instances",oBossBullet);
	bullet.speed = -5;
	//Bullet starts by moving down
	if rand2 = 1 bullet.vspeed = 5
	if rand2 = 2 bullet.vspeed = -5
	canFire1 = false;
	alarm[0] = game_get_speed(gamespeed_fps) * 3
}

//Firing sweep bullets
if canFire2 {
	var rand = irandom_range(1,2)
	//Top platform sweep
	if rand = 1{
		var bullet1 = instance_create_layer(x, 465,"Instances",oBossBullet1);
	}
	//Bottom platform sweep
	if rand = 2{
		var bullet1 = instance_create_layer(x, 630,"Instances",oBossBullet1);
	}
	bullet1.speed = -5
	canFire2 = false
	alarm[1] = game_get_speed(gamespeed_fps) * 10
}


