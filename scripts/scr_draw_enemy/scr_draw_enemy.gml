// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_draw_enemy(_num){
	show_debug_message(obj_player._deck_count);
	if (obj_player._deck_count - _num) == 2 {
		return;
	}
	if obj_player._enemy_hand_count == 3 {
		return;
	}
	for(i = 0; i < _num; i++) {
		show_debug_message(obj_player._enemy_hand_count);
		obj_player._deck_count--;
		obj_player.enemy_hand[obj_player._enemy_hand_count] = obj_player.deck[obj_player._deck_count];
		obj_player._enemy_hand_count++;
		deck[obj_player._deck_count] = 0;
	}
	
	// create card object for each card in hand
	obj_player._enemy_hand_card[obj_player._enemy_hand_count - 1] = instance_create_layer(_deck_x, _deck_y, layer_get_id("Instances"), obj_enemycard);
	with(obj_player._enemy_hand_card[obj_player._enemy_hand_count - 1]) {
		_card_drawn = true;
		_hand_position = obj_player._enemy_hand_count - 1;
		_card_num = obj_player.enemy_hand[_hand_position];
	}
	show_debug_message(obj_player._enemy_hand_card);
}