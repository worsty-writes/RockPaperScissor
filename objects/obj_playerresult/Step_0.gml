if y != 0 {
	move_towards_point(0, -100, 30);
}
if y < 0 {
	move_towards_point(0, -100, .1);
	if _click == true {
		alarm[0] = 360;
		_click = false;
	}
}