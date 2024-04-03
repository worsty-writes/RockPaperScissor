_ignorethis = true;

if _alarm5loop < 24 {
	audio_play_sound(snd_flip, 3, false);
	discard[_i]._discarded = false;
	discard[_i]._returned = true;
	alarm[5] = 30;
	_alarm5loop++;
	_i ++
	if _alarm5loop < 24 {
		alarm[5] = 10;
	}
}

if _alarm5loop == 24 {
	instance_destroy(obj_card);
	instance_destroy(obj_enemycard);
	alarm[6] = 60;
}