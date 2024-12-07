/// @description Insert description here
// You can write your code in this editor
if global.dmgCheat {
	oBoss2Main.hp -= 50
}
else{
	oBoss2Main.hp -= 2
}
if oBoss2Main.hp <= 0 instance_destroy(oBoss2Main)
instance_destroy(self);