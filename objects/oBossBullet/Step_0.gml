/// @description Insert description here
// You can write your code in this editor
if vspeed > 0 and y < (initial + maxY) {
	vspeed = vspeed
}
if y >= (initial + maxY) {
	vspeed = -5
}
if vspeed < 0 and y > (initial - maxY) {
	vspeed = vspeed
}
if y <= (initial - maxY) {
	vspeed = 5
}