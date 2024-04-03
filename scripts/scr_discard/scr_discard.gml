// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_discard(_num){
	for(i = 0; i < _num; i++) {
		obj_player._discard_count++
		obj_player.discard[obj_player._hand_count] = deck[_deck_count];
		obj_player._hand_count--
		deck[_deck_count] = 0;
	}
	
	// create card object for each card in hand
	_hand_card[_hand_count - 1] = instance_create_depth(_deck_x, _deck_y, (_hand_count - 2), obj_card);
	with(_hand_card[_hand_count - 1]) {
		_card_drawn = true;
		_hand_position = player._hand_count - 1;
		_card_num = player.hand[_hand_position];
	}
}

//for (i = 0; i < 24; i++) {
//	discard[i] = 0;
//}
//_discard_count = 0;
//_discard_x = (_deck_x + 500);
//_discard_y = (_deck_y-_card_height-10);

//instance_create_layer(_discard_x, _discard_y, "Instances", obj_discard);