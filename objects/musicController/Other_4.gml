/// @description Insert description here
// You can write your code in this editor
audio_stop_all()

// big switch case for bg music glhf
switch(room) {
	case rmBoss:
	audio_play_sound(Boss1_BGM, 1, true);
	break;
	
	case rmBoss2:
	audio_play_sound(Boss2_BGM, 1, true);
	break;
	
	case rmBoss3:
	audio_play_sound(Boss3_BGM, 1, true);
	break;
	
	case rmStory:
	audio_play_sound(StoryScreen_BGM, 1, true);
	break;
	
	case rmMain:
	audio_play_sound(sMainRoom, 1, true);
	break;
	
	case rmTutorialLevel:
	break;
	
	default:
	break;
}