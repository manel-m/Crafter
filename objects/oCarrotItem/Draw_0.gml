/// @description Insert description here
// You can write your code in this editor

var _arr = inv_get_item_array(ITEM.CARROT);
var _count = 0;
if (is_array(_arr)){
	_count = _arr[1];
}

draw_self();
draw_set_font(ftUI)
//draw_set_color(c_black)

draw_text(x+ 2,y+0, string(_count));