if y != 0 {
	move_towards_point(500, 1000, 30);
}
if y + 1000 > 900 {
	move_towards_point(500, 1000, .1);
	if _click == true {
		alarm[0] = 360;
		_click = false;
	}
}