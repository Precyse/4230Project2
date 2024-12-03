var rightKey = keyboard_check(ord("D"));
var leftKey = keyboard_check(ord("A"));
var upKey = keyboard_check(ord("W"));
var downKey = keyboard_check(ord("S"));

x = clamp(x, 0, room_width);
y = clamp(y, 0, room_height);

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
	
	if place_meeting(x+xspd,y,oFloor){
		xspd = 0;
	}
	if place_meeting(x,y+yspd,oFloor){
		yspd = 0;
	}
	
	x += xspd;
	y += yspd;
	
 
#endregion

//sprite control
	//make sure player facing correct direction
	face = round(moveDir/45);
	if face == 8 {face = 0; };
	
	if xspd == 0 and yspd == 0{
		image_index = 0;
	}

	//set player sprite
	sprite_index = sprite[face];