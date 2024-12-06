/// @description Insert description here
// You can write your code in this editor
global.boss2_defeated = true;
audio_stop_sound(Boss2_BGM);
audio_play_sound(Boss_deathSound,1,false);
instance_create_layer(1250,600,"Instances",oLeftMusicDisk);