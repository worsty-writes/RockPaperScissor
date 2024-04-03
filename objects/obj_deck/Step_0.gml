if(keyboard_check_released(vk_up)) {
	player._face_up = true;
	player._deck_buffer_x = 5;
}
if(keyboard_check_released(vk_down)) {
	player._face_up = false;
	player._deck_buffer_x = 0;
}
if (keyboard_check_released(vk_space)) {
	with(player){scr_shuffle_deck()};
}

if keyboard_check_released(vk_escape) {
	game_restart();
}