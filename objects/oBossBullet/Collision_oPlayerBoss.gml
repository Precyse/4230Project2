/// @description Insert description here
// You can write your code in this editor

//When the bullet hits the player, decrease player's health and destroy itself
//Destroy player if their health reaches 0
if(global.boss_defeated != true){
	if oBoss.hp < 60 and y = 630{
		oPlayerBoss.y -= 250
		oPlayerBoss.yspd = 0
	}
	lives -= 1
	audio_play_sound(Hit, 1, false);
	if lives <= 0 instance_destroy(oPlayerBoss)
	instance_destroy(self);
}


