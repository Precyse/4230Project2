/// @description Insert description here
// You can write your code in this editor
oBoss2.hp -= 1.5
if oBoss2.hp <= 0 instance_destroy(oBoss2)
instance_destroy(self);