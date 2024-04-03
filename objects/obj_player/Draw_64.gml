draw_set_color(c_white);
draw_set_font(fnt_font);
draw_text(100, 100, (string(_opponent_score)));
draw_text(100, 800, (string(_player_score)));

if _ignorethis = true {
	draw_sprite(spr_ignorethis, 0, obj_deck.x - 25, obj_deck.y - 25);
}