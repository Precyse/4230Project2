/// @description Insert description here
// You can write your code in this editor
oPlayerBoss.hp -= 25
if oPlayerBoss.hp <= 0 instance_destroy(oPlayerBoss)
instance_destroy(self);
