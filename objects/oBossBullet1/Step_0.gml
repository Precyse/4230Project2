/// @description Insert description here

//Check if bullet is moving left
if speed < 0 and x > (initial - maxX) {
	speed = speed
}

//Check if bullet is moving right
if speed > 0 and x < initial {
	speed = speed
}

//If bullet reached the left point, move right
if x <= (initial - maxX) {
	image_xscale = -image_xscale
	speed = 5
}

//If bullet gets back to the boss, destroy itself
if speed > 0 and x >= initial {
	instance_destroy(self);
}