if _enemy_hand_count < 3 {
	global._card_depth -= 1;
	scr_draw_enemy(1);
	alarm[0] = 5;
}
if _enemy_hand_count == 3 {
	alarm[1] = 90;
}