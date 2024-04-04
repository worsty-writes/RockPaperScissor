if _card_drawn == true {
	if alarm[0] == -1 {
		alarm[0] = 1;
	}
}

if _in_play == true {
	if _card_in_hand == true {
		_x_pos = obj_player.x - (player._hand_count/2)*(_card_width+3) + (_card_width/2) + (3+_card_width)*_hand_position;
		if _selected == false {
			if (x != _x_pos && y != _y_pos) {
				move_towards_point(_x_pos, _y_pos, 10);
			}
			if distance_to_point(_x_pos, _y_pos) < 1 {
				x = _x_pos;
				y = _y_pos;
				speed = 0;
			}
		}
		else {
			if (x != obj_activezoneplayer.x && y != obj_activezoneplayer.y) {
				move_towards_point(obj_activezoneplayer.x, obj_activezoneplayer.y, 10);
			}
			if distance_to_point(obj_activezoneplayer.x, obj_activezoneplayer.y) < 1 {
				x = obj_activezoneplayer.x;
				y = obj_activezoneplayer.y;
				speed = 0;
			}
		}
	}
}
if _discarded == true {
	sprite_index = _sprite_array[_card_num];
	if (x != obj_discard.x && y != obj_discard.y) {
		move_towards_point(obj_discard.x + _randomx, obj_discard.y + _randomy, 30);
	}
	if distance_to_point(obj_discard.x + _randomx, obj_discard.y + _randomy) < 1 {
		x = obj_discard.x + _randomx;
		y = obj_discard.y + _randomy;
		speed = 0;
	}
}
if _returned = true {
	sprite_index = spr_cardbacking
	if (x != obj_deck.x && y != obj_deck.y) {
		move_towards_point(obj_deck.x, obj_deck.y, 50);
	}
	if distance_to_point(obj_deck.x, obj_deck.y) < 1 {
		x = obj_deck.x;
		y = obj_deck.y;
		speed = 0;
		instance_destroy();
	}
}

if _flashing == true {
	if _flashing_restart == true {
		alarm[3] = 5;
		_flashing_restart = false;
	}
}
//if _card_in_hand == true {
//	_x_pos = obj_player.x - (player._hand_count/2)*(_card_width+3) + (_card_width/2) + (3+_card_width)*_hand_position;
//	if point_distance(x, y, _x_pos, _y_pos) > 10 {
//		if _selected == false {
//			move_towards_point(_x_pos, _y_pos, 10);
//		}
//	}
//	else {
//		if _selected == false {
//			x = _x_pos;
//			y = _y_pos;
//			speed = 0;
//		}
//	}
//}

//var _distance = point_distance(x, y, obj_activezoneplayer.x, obj_activezoneplayer.y);

//if (mouse_check_button_released(mb_left)) {
//	_selected = false;
//}

//if _selected = false {
//	depth = layer_get_depth(layer_get_id("Instances"));
//}

