// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_is_element(){
	if sprite_index == spr_cardfire {
		return "FIRE";
	}
	if sprite_index == spr_cardwater {
		return "WATER";
	}
	if sprite_index == spr_cardgrass {
		return "GRASS";
	}
}