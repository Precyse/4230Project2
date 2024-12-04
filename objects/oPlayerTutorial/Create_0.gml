/// @description Insert description here
// You can write your code in this editor
controlSetup();
//Sprites
attacking = false;
canFire = true;

facingRight = true;
facingLeft = false;

hp = 100;
global.stamina = 80;

//Movement
face = 1;
xspd = 0;
moveDir = 0;
moveSpd = 5;
canJump = true;

dashSpd = 20;
dashDuration = 0;
isDashing = false;



//Attacking
isAttacking = false;
canAttack = true;

// Jumping
yspd = 0;
grav = 0.5;
jspd = -15;
termVel = 5;
jumpMax = 1;
jumpCount = 0;
jumpHoldTimer = 0;
jumpHoldFrames = 18;
onGround = true;

//Coyote Time
	//Hang Time
	coyoteHangFrames = 2;
	coyoteHangTimer = 0;

	//Jump Time
	coyoteJumpFrames = 5;
	coyoteJumpTimer = 0;
	

	
spread_count = 3; // Number of bullets in the spread
spread_angle = 45; // Total angle of the spread
lives = 3;
dashDir = face;
hasDashed = false;