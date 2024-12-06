/// @description Insert description here
// You can write your code in this editor
if(global.boss2_defeated != true){
	lives -= 1
	if lives <= 0 instance_destroy(oPlayerBoss)
	instance_destroy(self);
}