// Get Inputs
get_controls();

x = clamp(x, 0, room_width);
y = clamp(y, 0, room_height);


// X Movement
	//Direction
	moveDir = rightKey - leftKey;

	if moveDir != 0 {face = moveDir; };
	
	//Get xspd
	xspd = moveDir * moveSpd;
	
	
	//Dashing
	dashDuration = max(dashDuration - 1,0)
	if(dashKey){
		dashDuration = 10;
		if (face != 0) { // Dashes in the direction the player is facing
			xspd = face * dashSpd;
    }
}
	// X Collision
	var _subPixel = .5;
	if place_meeting(x + xspd, y, oFloor){
		var _pixelCheck = _subPixel * sign(xspd);
		while !place_meeting(x + _pixelCheck,y,oFloor){
			x += _pixelCheck;
		}
		xspd = 0;
	}
	x += xspd;

// Y Movement
	// Gravity
	yspd += grav
	//Jump
	if jumpKeyBuffered && jumpCount < jumpMax{
		
		jumpKeyBuffered = false;
		jumpKeyBufferTimer = 0;
		
		jumpCount++;
		
		yspd = jspd;
		
	}
	//if yspd > termVel{yspd = termVel}
	
	// Y Collision
	if place_meeting(x, y + yspd, oFloor){
		jumpCount = 0;
		var _pixelCheck = _subPixel * sign(yspd);
		while !place_meeting(x,y + _pixelCheck, oFloor){
			y += _pixelCheck;
		}
		yspd = 0;
	}
	y += yspd;
	
// Which Way Character is Facing
if (xprevious < x){
	facingLeft = false;
	facingRight = true;
} 
else if (xprevious > x) {
	facingRight = false;
	facingLeft = true;
}
	
// Far Bullets (Main Fire)
if(mouse_check_button(mb_left) and canFire = true){
	var farBullet = instance_create_layer(x, y,"Instances",oFarBullet);
	if(facingRight){
		farBullet.speed = 15;
	}
	if(facingLeft){
		farBullet.speed = -15;
	}
	canFire = false;
	alarm[0] = 20;
	
}
// Spead Bullet Pattern (Alt Fire)
if(mouse_check_button(mb_right) and canFire = true){
		var closeBulletTop = instance_create_layer(x, y-25,"Instances",oCloseBullet);
		var closeBulletMiddle = instance_create_layer(x, y,"Instances",oCloseBullet);
		var closeBulletBottom = instance_create_layer(x, y+25,"Instances",oCloseBullet);
		if(facingRight){
			closeBulletTop.speed = 15;
			closeBulletTop.direction = 10;
			
			closeBulletMiddle.speed = 15;
			
			closeBulletBottom.speed = 15;
			closeBulletBottom.direction = -10;
		}
		if(facingLeft){
			closeBulletTop.speed = -15;
			closeBulletTop.direction = 350;
			
			closeBulletMiddle.speed = -15;
			
			closeBulletBottom.speed = -15;
			closeBulletBottom.direction = 370;
		}
		canFire = false;
		alarm[0] = 20;
    }
	



