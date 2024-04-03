//for (i = 0; i < 3; i++) {
//	_enemy_hand_card[i]._discarded = true;
//	_hand_card[i]._discarded = true;
//}

//_hand_count = 0;
//_enemy_hand_count = 0;

if _alarm4loop < 3 {
	_enemy_hand_card[_i]._discarded = true;
	_hand_card[_i]._discarded = true;
	_discard_count++;
	_discard_count++;
	discard[_j] = _enemy_hand_card[_i]
	discard[_j + 12] = _hand_card[_i]
	_j++;
	_hand_count--;
	_enemy_hand_count--;
	_alarm4loop++;
	_i++;
	alarm[4] = 5;
}
if _alarm4loop == 3 {
	if _deck_count > 3 {
		_i = 0;
		alarm[1] = 30;
	}
	if _deck_count == 3 {
		alarm[5] = 60;
	}
}