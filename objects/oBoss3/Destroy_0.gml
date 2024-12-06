/// @description Insert description here
// You can write your code in this editor
global.boss3_defeated = true;
audio_stop_sound(Boss3_BGM);
audio_play_sound(Boss_deathSound,1,false);
instance_create_layer(1250,600,"Instances",oRightMusicDisk);