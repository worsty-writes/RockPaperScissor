// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_win_or_lose(_player_card, _opp_card){
	if _player_card._card_num == _opp_card._card_num {
		return "TIE";
	}
	else {
		if _player_card._card_num == 1 {
			if _opp_card._card_num == 2 {
				return "LOSE";
			}
			if _opp_card._card_num == 3 {
				return "WIN";
			}
		}
		if _player_card._card_num == 2 {
			if _opp_card._card_num == 3 {
				return "LOSE";
			}
			if _opp_card._card_num == 1 {
				return "WIN";
			}
		}
		if _player_card._card_num == 3 {
			if _opp_card._card_num == 1 {
				return "LOSE";
			}
			if _opp_card._card_num == 2 {
				return "WIN";
			}
		}
	}
}