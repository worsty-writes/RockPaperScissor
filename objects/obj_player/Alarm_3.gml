_result = scr_win_or_lose(global._player_card, _enemy_hand_card[_enemy_play]);

if _result == "TIE" {
	_opponent_score += 0;
	_player_score += 0;
}
if _result == "WIN" {
	audio_play_sound(snd_win, 3, false);
	_enemy_hand_card[_enemy_play]._flashing = true;
	_opponent_score += 0;
	_player_score += 1;
}
if _result == "LOSE" {
	audio_play_sound(snd_lose, 3, false);
	global._player_card._flashing = true;
	_opponent_score += 1;
	_player_score += 0;
}

if _deck_count > 3 {
	alarm[4] = 60;
}
if _deck_count == 3 {
	alarm[5] = 60;
}