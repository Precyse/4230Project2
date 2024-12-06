 /// @description Insert description here
// You can write your code in this editor
if(global.boss_defeated == true) instance_destroy();
if(keyboard_check_pressed(ord("E"))){
	audio_play_sound(MainRoom_enter, 1, false);
	room_goto(rmBoss)
}