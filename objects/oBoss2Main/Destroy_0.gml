global.boss2_defeated = true;
audio_stop_sound(Boss2_BGM);
instance_destroy(oFlyingattack)
audio_play_sound(Boss_deathSound,1,false);
instance_create_layer(1250,600,"Instances",oLeftMusicDisk);