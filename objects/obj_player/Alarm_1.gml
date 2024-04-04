if _hand_count < 3 {
	global._card_depth -= 1;
	scr_draw(1);
	alarm[1] = 5;
}

if _hand_count == 3 {
	alarm[2] = 90;
}