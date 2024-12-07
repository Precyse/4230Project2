/// @description Insert description here
// You can write your code in this editor
if(global.boss2_defeated != true){
	lives -= 1
	audio_play_sound(Hit, 1, false);
	if lives <= 0 instance_destroy(oPlayerBoss)
	instance_destroy(self);
}