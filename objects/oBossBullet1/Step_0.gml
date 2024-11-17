/// @description Insert description here
// You can write your code in this editor
if speed < 0 and x > (initial - maxX) {
	speed = speed
}

if speed > 0 and x < initial {
	speed = speed
}

if x <= (initial - maxX) {
	speed = 5
}

if speed > 0 and x >= initial {
	instance_destroy(self);
}