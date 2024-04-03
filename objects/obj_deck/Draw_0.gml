with(player){	
	for (i = 0; i < _deck_count; i++) {
		_card_sprite = spr_cardbacking;
		if _face_up == true {
			_card_sprite = _sprite_array[deck[i]];
		}
		if deck[i] > 0 {
			draw_sprite(_card_sprite, -1, (_deck_x + (_deck_buffer_x * i)), _deck_y + (_deck_buffer_y * i));
		}
	}
}
