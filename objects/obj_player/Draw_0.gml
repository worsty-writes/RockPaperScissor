if _show_scores == true {
	draw_set_color(c_white);
	draw_set_font(fnt_font);
	draw_text(100, 100, (string(_opponent_score)));
	draw_text(100, 740, (string(_player_score)));
}