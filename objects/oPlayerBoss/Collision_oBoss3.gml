/// @description Insert description here
// You can write your code in this editor
lives -= 1;
if global.location = 1{
	x += 200
}
else{
	x-=200
}

instance_create_depth(oPlayerBoss.x,oPlayerBoss.y,0,oHitFX)
audio_play_sound(Hit, 1, false);