/// @description Insert description here
// You can write your code in this editor
oBoss.hp -= 5
if oBoss.hp <= 0 instance_destroy(oBoss)
instance_destroy(self);