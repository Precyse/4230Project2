/// @description Insert description here

//Check if bullet hasn't reached the bottom
if vspeed > 0 and y < (initial + maxY) {
	vspeed = vspeed
}

//When bullet reaches the bottom, start moving up
if y >= (initial + maxY) {
	vspeed = -5
}

//Check if bullet hasn't reached the top
if vspeed < 0 and y > (initial - maxY) {
	vspeed = vspeed
}

//When bullet reacher the top, start moving down
if y <= (initial - maxY) {
	vspeed = 5
}