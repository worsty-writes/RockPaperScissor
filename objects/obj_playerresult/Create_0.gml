if obj_player._player_score > obj_player._opponent_score {
	audio_play_sound(snd_cheer, 3, false);
	sprite_index = spr_playerwins;
}
if obj_player._opponent_score > obj_player._player_score {
	audio_play_sound(snd_aw, 3, false);
	sprite_index = spr_playerloses;
}
if obj_player._opponent_score == obj_player._player_score {
	audio_play_sound(snd_politeclap, 3, false);
	sprite_index = spr_playerties;
}
_click = true;