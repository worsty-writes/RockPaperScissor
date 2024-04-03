scr_init_spray_array();

global._player_card = 0;

// will be true when animation playing
card_drawn = false;

//will be true when card drawn variable turns to false
_card_in_hand = false;

//attatch to player object
player = obj_player;

_card_num = 0;
_hand_position = 0;

// maps posi of card
_x_pos = 0;
_y_pos = player.y;

// is it selected?
_selected = false;

global._reveal = false;

_x = 0;
_y = 0;

_card_width = 100;
_card_height = 140;

_remove_from_hand = 0;

_discarded = false;
_returned = false;
_in_play = true;
_flashing = false;
_flashing_restart = true;