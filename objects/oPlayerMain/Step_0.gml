var rightKey = keyboard_check(ord("D"));
var leftKey = keyboard_check(ord("A"));
var upKey = keyboard_check(ord("W"));
var downKey = keyboard_check(ord("S"));

//playermovement
#region
	//get direction
	var _horizKey = rightKey - leftKey;
	var _vertiKey = downKey - upKey;
	moveDir = point_direction(0,0,_horizKey,_vertiKey);
	
	//get the x and y speeds
	var _spd = 0;
	var _inputLevel = point_distance(0,0,_horizKey,_vertiKey);
	_inputLevel = clamp(_inputLevel,0,1);
	_spd = moveSpd * _inputLevel;
	
	xspd = lengthdir_x(_spd,moveDir);
	yspd = lengthdir_y(_spd,moveDir);
	
	x += xspd;
	y += yspd;
#endregion

//sprite control
	//make sure player facing correct direction
	face = round(moveDir/90);
	if face == 4 {face = 0; };

	//set player sprite
	sprite_index = sprite[face];