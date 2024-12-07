/// @description Insert description here


//When the bullet hits the player, decrease player's health and destroy itself
//Destroy player if their health reaches 0
if(global.boss_defeated != true){
	lives -= 1
	audio_play_sound(Hit, 1, false);
	if lives <= 0 instance_destroy(oPlayerBoss)
	instance_destroy(self);
}
