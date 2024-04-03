if _card_drawn == true {
	if alarm[0] == -1 {
		alarm[0] = 1;
	}
}
if _discarded == false {
	if _card_in_hand == true {
		_x_pos = obj_opponent.x - (player._enemy_hand_count/2)*(_card_width+10) + (_card_width/2)  + (3+_card_width)*_hand_position;
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
			if (x != obj_activezoneenemy.x && y != obj_activezoneenemy.y) {
				move_towards_point(obj_activezoneenemy.x, obj_activezoneenemy.y, 10);
			}
			if distance_to_point(obj_activezoneenemy.x, obj_activezoneenemy.y) < 1 {
				x = obj_activezoneenemy.x;
				y = obj_activezoneenemy.y;
				speed = 0;
			}
			if global._reveal == true {
				sprite_index = _sprite_array[_card_num];
			}
		}
	}
}
if _discarded == true {
	sprite_index = _sprite_array[_card_num];
	if (x != obj_discard.x && y != obj_discard.y) {
		move_towards_point(obj_discard.x, obj_discard.y, 10);
	}
	if distance_to_point(obj_discard.x, obj_discard.y) < 1 {
		x = obj_discard.x;
		y = obj_discard.y;
		speed = 0;
	}
}
if _returned = true {
	sprite_index = spr_cardbacking
	if (x != obj_deck.x && y != obj_deck.y) {
		move_towards_point(obj_deck.x, obj_deck.y, 30);
	}
	if distance_to_point(obj_deck.x, obj_deck.y) < 1 {
		x = obj_deck.x;
		y = obj_deck.y;
		speed = 0;
		instance_destroy();
	}
}