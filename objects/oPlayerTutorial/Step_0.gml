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
if (dashKey && dashDuration == 0 && hasDashed = false) { // Start a new dash only if not already dashing
    hasDashed = true;
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
		audio_play_sound(Hit, 1, false);
		yspd = jspd;
		
	}
	//if yspd > termVel{yspd = termVel}
	
	// Y Collision
	if place_meeting(x, y + yspd, oFloor){
		jumpCount = 0;
		hasDashed = false;
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
if (mouse_check_button(mb_left) and canFire == true) {
	audio_sound_pitch(tempo_farShot, random_range(0.9, 1.1));
	audio_play_sound(tempo_farShot, 1, false);
    attacking = true;

    // Adjust the bullet spawn position based on facing direction
    var bullet_x_offset = facingRight ? 30 : -30; 
    var farBullet = instance_create_layer(x + bullet_x_offset, y + 20, "Instances", oFarBullet);

    // Set bullet speed based on facing direction
    farBullet.speed = facingRight ? 15 : -15;

    canFire = false;
    alarm[0] = 20;
}

// Spread Bullet Pattern (Alt Fire)
if (mouse_check_button(mb_right) and canFire == true) {
    attacking = true;
	audio_sound_pitch(Tempo_closeShot, random_range(0.9, 1.1));
	audio_play_sound(Tempo_closeShot, 1, false);

    // Adjust the bullet spawn position based on facing direction
    var bullet_x_offset = facingRight ? 30 : -30;

    // Create bullets at specific offsets
    var closeBulletTop = instance_create_layer(x + bullet_x_offset, y - 5, "Bullets", oCloseBullet);
    var closeBulletMiddle = instance_create_layer(x + bullet_x_offset, y + 20, "Bullets", oCloseBullet);
    var closeBulletBottom = instance_create_layer(x + bullet_x_offset, y + 45, "Bullets", oCloseBullet);

    if (facingRight) {
        closeBulletTop.speed = 15;
        closeBulletTop.direction = 10;

        closeBulletMiddle.speed = 15;

        closeBulletBottom.speed = 15;
        closeBulletBottom.direction = -10;
    } else if (facingLeft) {
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

// fixed it, left mb check
if (mouse_check_button(mb_left) or mouse_check_button(mb_right)) {
    attacking = true;
    sprite_index = sPlayerAttack;
    image_speed = 1;

    // check if attacking anim finished
    if (image_index >= image_number - 1) {
        image_index = 0; // frame reset to loop
    }
} else {
    // not attacking
    attacking = false;
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

var is_moving = (xspd != 0);

if (is_moving && !audio_is_playing(footstep_handle)) {
    footstep_handle = audio_play_sound(Tempo_footStep, 1, true);
    audio_sound_pitch(footstep_handle, random_range(0.9, 1.1));
}

// if player is not moving, stop it
if (!is_moving && audio_is_playing(footstep_handle)) {
    audio_stop_sound(footstep_handle);
    footstep_handle = noone;
}

