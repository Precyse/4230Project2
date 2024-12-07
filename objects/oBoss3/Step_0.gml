/// @description Insert description here
// You can write your code in this editor
if canFire and move = false{
	var randType = irandom_range(1,2)
	if randType = 1{
		if global.location = 1{
			var fire = instance_create_layer(1020, 620,"Instances",oBoss3Fire);
			fire.speed = -5;
		}
		if global.location = 2{
			var fire = instance_create_layer(356, 620,"Instances",oBoss3Fire);
			fire.speed = 5;
		}	
	}
	if randType = 2{
		if global.location = 1{
			var fire = instance_create_layer(1020, 480,"Instances",oBoss3Fire);
			fire.speed = -5
		}
		if global.location = 2{
			var fire = instance_create_layer(356, 480,"Instances",oBoss3Fire);
			fire.speed = 5
		}
		
	}
	canFire = false;
	var fireTiming = random_range(1.5,1.9)
	alarm[0] = game_get_speed(gamespeed_fps) * fireTiming
}
if hp <= 50 {
	secondPhase = true
}

if summonBat and secondPhase{
	var randX = irandom_range(250,1150)
	var bat = instance_create_layer(randX, 0,"Instances",oBoss3Bat);
	summonBat = false
	var batTiming = random_range(3,5)
	alarm[2] = game_get_speed(gamespeed_fps) * batTiming
}

if move{
	if global.location = 1 and move{
		speed = -4
		sprite_index = sBoss3Walk
		if x <= 128{
			speed = 0
			image_xscale = -image_xscale
			canFire = true
			sprite_index = sBoss3Idle
			move = false	
			global.location = 2
			var walkTiming = irandom_range(8,15)
			alarm[1] = game_get_speed(gamespeed_fps) * walkTiming
		}
	}
	if global.location = 2 and move{
		speed = 4
		sprite_index = sBoss3Walk
		if x >= 1248{
			speed = 0
			image_xscale = -image_xscale
			canFire = true
			sprite_index = sBoss3Idle
			move = false	
			global.location = 1
			var walkTiming = irandom_range(8,15)
			alarm[1] = game_get_speed(gamespeed_fps) * walkTiming
		}
	}	
}