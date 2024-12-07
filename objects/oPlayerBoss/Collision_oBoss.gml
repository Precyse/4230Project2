/// @description Insert description here
//Lose health and get knocked back on contact with boss
lives -= 1;
x -= 100
instance_create_depth(oPlayerBoss.x,oPlayerBoss.y,0,oHitFX)
audio_play_sound(Hit, 1, false);