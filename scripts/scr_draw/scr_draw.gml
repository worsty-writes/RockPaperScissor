// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_draw(_num){
	show_debug_message(_deck_count);
	if (_deck_count - _num) == 2 {
		return;
	}
	if obj_player._hand_count == 3 {
		return;
	}
	for(i = 0; i < _num; i++) {
		obj_player._deck_count--
		obj_player.hand[obj_player._hand_count] = deck[_deck_count];
		obj_player._hand_count++
		deck[_deck_count] = 0;
	}
	
	// create card object for each card in hand
	_hand_card[_hand_count - 1] = instance_create_layer(_deck_x, _deck_y, layer_get_id("Instances"), obj_card);
	with(_hand_card[_hand_count - 1]) {
		_card_drawn = true;
		_hand_position = player._hand_count - 1;
		_card_num = player.hand[_hand_position];
	}
}