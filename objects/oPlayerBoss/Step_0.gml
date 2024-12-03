// Get Inputs
get_controls();

x = clamp(x, 0, room_width);
y = clamp(y, 0, room_height);

// X Movement
	//Direction
	moveDir = rightKey - leftKey;

	if moveDir != 0 {face = moveDir; };
	
// Normal Movement
if (dashDuration == 0) { // Only apply normal movement when not dashing
    xspd = moveDir * moveSpd;
}

// Dashing
if (dashKey && dashDuration == 0) { // Start a new dash only if not already dashing
    dashDuration = 10;
    dashDir = face; // Save the direction for the dash
}

if (dashDuration > 0) {
    dashDuration -= 1; // Decrease the dash timer
    xspd = dashDir * dashSpd; // Apply dash speed in the saved direction
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
	attacking = true;
	var farBullet = instance_create_layer(x+30, y+20,"Instances",oFarBullet);
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
	attacking = true;
	var closeBulletTop = instance_create_layer(x+30, y-5,"Bullets",oCloseBullet);
	var closeBulletMiddle = instance_create_layer(x+30, y+20,"Bullets",oCloseBullet);
	var closeBulletBottom = instance_create_layer(x+30, y+45,"Bullets",oCloseBullet);
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

//Sprite Control
if (attacking) {
    sprite_index = sPlayerAttack;
    image_speed = 1;

// check if attacking anim finished
    if (image_index >= image_number - 1) {
        attacking = false;
        image_index = 0;
    }
} else {
    // not attacking
    sprite_index = sPlayer;

    if (xspd != 0) {
       // running sprite
        image_speed = 1; 
    } else {
        // freeze sprite if standing
        image_speed = 0; 
        image_index = 0; 
    }
}
// Life Control
if lives == 0 {
	instance_destroy();
}



