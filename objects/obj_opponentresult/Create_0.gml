if obj_player._player_score < obj_player._opponent_score {
	sprite_index = spr_opponentwins;
}
if obj_player._opponent_score < obj_player._player_score {
	sprite_index = spr_opponentloses;
}
if obj_player._opponent_score == obj_player._player_score {
	sprite_index = spr_opponentties;
}
_click = true;