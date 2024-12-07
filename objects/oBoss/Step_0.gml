/// @description Insert description here
// You can write your code in this editor

//Fire up and down bullets
if canFire1 {
	var randType = irandom_range(1,2)
	if randType = 1{
		var rand = irandom_range(-100,100)
		var rand2 = irandom_range(1,2)
		var bullet = instance_create_layer(x, y+rand,"Instances",oBossBullet);
		bullet.speed = -5;
		//Bullet starts by moving down
		if rand2 = 1 bullet.vspeed = 5
		if rand2 = 2 bullet.vspeed = -5
	}
	if randType = 2{
		var rand = irandom_range(-200,200)
		var bullet = instance_create_layer(x, y+rand,"Instances",oBossBullet);
		bullet.speed = -5
		bullet.vspeed = 0
	}
	audio_play_sound(Boss1Fire, 1, false);
	canFire1 = false;
	var bulletTiming = irandom_range(1,2)
	alarm[0] = game_get_speed(gamespeed_fps) * bulletTiming
}

//Firing sweep bullets
if canFire2 {
	if hp > 60{
		var rand = irandom_range(1,2)
	}
	else{
		rand = 1
	}
	//Top platform sweep
	if rand = 1{
		var bullet1 = instance_create_layer(x, 465,"Instances",oBossBullet1);
	}
	//Bottom platform sweep
	if rand = 2{
		var bullet1 = instance_create_layer(x, 630,"Instances",oBossBullet1);
	}
	bullet1.speed = -7
	canFire2 = false
	var bulletTiming = irandom_range(8,12)
	alarm[1] = game_get_speed(gamespeed_fps) * bulletTiming
}


//When hp is less than 60, go to second phase which prevents player from touching the ground
if hp < 60 and canFire3 {
	var secondPhase = instance_create_layer(x, 630,"Instances",oBossBullet);
	secondPhase.speed = -10
	canFire3 = false
	alarm[3] = 10
	
}


