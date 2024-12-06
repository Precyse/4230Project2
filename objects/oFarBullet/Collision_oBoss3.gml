/// @description Insert description here
// You can write your code in this editor
if global.dmgCheat {
	oBoss3.hp -= 50
}
else{
	oBoss3.hp -= 1.5
}
if oBoss3.hp <= 0 instance_destroy(oBoss3)
instance_destroy(self);