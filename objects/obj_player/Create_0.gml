randomize();

//set deck x and y coordinates

_deck_x = obj_deckholder.x;

_deck_y = obj_deckholder.y;

_x_pos = obj_player.x;

_y_pos = obj_player.y;

//set card height and width

//set deck x and y coordinates

_deck_x = obj_deckholder.x;

_deck_y = obj_deckholder.y;

//set card height and width

_card_width = 100;

_card_height = 140;

// set how many cards in deck, h

_card_width = 100;

_card_height = 140;

_hand_count = 0;
for (i = 0; i < 3; i++){
	hand[i] = 0
}

i = 0;

_enemy_hand_count = 0;
for (i = 0; i < 3; i++){
	enemy_hand[i] = 0
}
_enemy_play = -1;

i = 0;

scr_init_spray_array();

i = 0;

_deck_count = 0;

_pointer = 0

_deck_buffer_x = 0;
_deck_buffer_y = .4;


_face_up = false;

_card_sprite = spr_cardbacking;

// is it facing up?

for(i = 0; i < 24; i++) {
	deck[i] = 0;
}

for(i = 0; i < 3; i++) {
	_hand_card[i] = 0;
	_enemy_hand_card[i] = 0;
}

deck[i++] = 1;
deck[i++] = 2;
deck[i++] = 3;
deck[i++] = 1;
deck[i++] = 2;
deck[i++] = 3;
deck[i++] = 1;
deck[i++] = 2;
deck[i++] = 3;
deck[i++] = 1;
deck[i++] = 2;
deck[i++] = 3;
deck[i++] = 1;
deck[i++] = 2;
deck[i++] = 3;
deck[i++] = 1;
deck[i++] = 2;
deck[i++] = 3;
deck[i++] = 1;
deck[i++] = 2;
deck[i++] = 3;
deck[i++] = 1;
deck[i++] = 2;
deck[i++] = 3;

_deck_count = i;

#macro CARDMAX i

i = 0;

alarm[0] = 5;
// field variables

for (i = 0; i < 1; i++) {
	field[i] = 0;
	fieldcard[i] = noone;
}

_field_x_coor[0] = 403;
_field_y_coor[0] = 486;

//discard variables

for (i = 0; i < 27; i++) {
	discard[i] = 0;
}
_discard_count = 0;
_discard_x = (_deck_x + 500);
_discard_y = (_deck_y-_card_height-10);

instance_create_layer(_discard_x, _discard_y, "Instances", obj_discard);

scr_shuffle_deck();
scr_shuffle_deck();

global._buffer = false;

_player_score = 0;
_opponent_score = 0;

global._reveal = false;

_result = 0;
_j = 0;

//creating loops

_alarm4loop = 0;
_i = 0;
_alarm5loop = 0;

//can the player act?
global._can_select = false;

_ignorethis = false;