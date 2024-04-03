//for (i = 0; i < 3; i++) {
//	_enemy_hand_card[i]._discarded = true;
//	_hand_card[i]._discarded = true;
//}

//_hand_count = 0;
//_enemy_hand_count = 0;

if _alarm4loop < 3 {
	audio_play_sound(snd_flip, 3, false);
	_enemy_hand_card[_i]._in_play = false;
	_enemy_hand_card[_i]._discarded = true;
	audio_play_sound(snd_flip, 3, false);
	_hand_card[_i]._in_play = false;
	_hand_card[_i]._discarded = true;
	_discard_count++;
	_discard_count++;
	discard[_j] = _enemy_hand_card[_i];
	discard[_j + 1] = _hand_card[_i];
	_hand_card[i] = 0;
	_enemy_hand_card[i] = 0;
	_j += 2;
	_alarm4loop++;
	_i++;
	if _alarm4loop < 3 {
		alarm[4] = 30;
	}
}
if _alarm4loop == 3 {
	if _deck_count > 3 {
		_hand_count = 0;
		_enemy_hand_count = 0;
		_enemy_hand_card = [0, 0, 0];
		_hand_card = [0, 0, 0];
		_i = 0;
		_alarm4loop = 0;
		alarm[0] = 30;
	}
	if _deck_count == 4 {
		show_debug_message(discard);
		_hand_count = 0;
		_enemy_hand_count = 0;
		_i = 0;
		_alarm4loop = 0;
		alarm[5] = 1200;
	}
}