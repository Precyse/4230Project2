/// @description Insert description here
//Lose health and get knocked back on contact with boss
lives -= 1;
x -= 100
if lives <= 0 instance_destroy(self)
