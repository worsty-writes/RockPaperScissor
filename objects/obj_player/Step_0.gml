if global._reveal == true {
	if global._buffer == true {
		audio_play_sound(snd_flip, 3, false);
		alarm[3] = 30;
		global._buffer = false;
	}
}