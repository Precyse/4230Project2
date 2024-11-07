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
	if jumpKeyBuffered{	
		yspd = jspd;
	}
	//if yspd > termVel{yspd = termVel}
	
	// Y Collision
	if place_meeting(x, y + yspd, oFloor){
		var _pixelCheck = _subPixel * sign(yspd);
		while !place_meeting(x,y + _pixelCheck, oFloor){
			y += _pixelCheck;
		}
		yspd = 0;
	}
	y += yspd;
	
// Far Bullets (Main Fire)
if(mouse_check_button(mb_left) and canFire = true){
	var farBullet = instance_create_layer(x, y,"Instances",oFarBullet);
	farBullet.direction = image_xscale;
	canFire = false;
	alarm[0] = 20;
	
}
// Spead Bullet Pattern (Alt Fire)
    var base_angle = 270; // Direction (270 is up)
    var angle_step = spread_angle / (spread_count - 1);

    for (var i = 0; i < spread_count; i++) {
		if(mouse_check_button(mb_right) and canFire = true){
        var angle = base_angle - (spread_angle / 2) + (i * angle_step);
        var bullet = instance_create_layer(x, y, "Instances", oCloseBullet);
        bullet.direction = angle;
		canFire = false;
		alarm[0] = 20;
		}
    }