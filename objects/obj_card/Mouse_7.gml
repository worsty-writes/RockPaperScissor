if global._can_select == true {
	audio_play_sound(snd_flip, 3, false);
	_selected = true;

	global._player_card = self;

	alarm[2] = 90;
	
	global._can_select = false;
}
//for(i = 0; i < 1; i++) {
//	if(x - 50 > (player._field_x_coor[i] - _card_width/2 - 50) && x - 50 < (player._field_x_coor[i] + _card_width/2 - 50)) {
//			if((y - 45 > player._field_y_coor[i] - _card_height/2 - 45)) && y - 45 < (player._field_x_coor[i] + _card_width/2 - 45) {
//				player.fieldcard[i] = instance_create_depth(player._field_x_coor[i] - 50, player._field_y_coor[i] - 45, 1, obj_field_card);
//				var _sprite = sprite_index
//				var _card_num = self._card_num;
//				var _position = i;
//				with(player.fieldcard[i]) {
//					player = obj_player;
//					self._card_num = _card_num;
//					self._position = _position;
//					_x_pos = player._field_x_coor[self._position];
//					_y_pos = player._field_y_coor[self._position];
//					sprite_index = _sprite;
//				}
//				player._hand_count--;
//				player.hand[_hand_position] = 0;
//				for(i = _hand_position; i < 2; i++) {
//					player.hand[i] = player.hand[i+1];
//					if (i < player._hand_count) {
//						player._hand_card[i] = player._hand_card[i + 1];
//						player._hand_card[i]._hand_position--;
//						player._hand_card[i].depth--;
//					}
//				}
//				instance_destroy();
//			}
//	}
//}

