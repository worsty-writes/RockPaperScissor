// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_shuffle_deck(){
	show_debug_message("HELLO!");
	var _num_shuffle = 100;
	
	if _deck_count == 0 {
		return;
	}
	//shuffle action
	
	for (j = 0; j < _num_shuffle; j++) {
		// shuffle action
		for (i = 0; i < _deck_count; i++) {
			var _temp_1 = irandom_range(0, _deck_count - 1);
			if (deck[i] > 0) && (deck[_temp_1] > 0) {
				var _temp_2 = deck[i];
				deck[i] = deck[_temp_1];
				deck[_temp_1] = _temp_2;
			}
		}
	}
}