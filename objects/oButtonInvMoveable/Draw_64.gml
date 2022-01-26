/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//Get array from list
var _list = list;
var _arr = _list[|slotID];

//Draw item
if (is_array(_arr)){
	var _item = _arr[0];
	var _spr = global.itemSprite[_item];
	
	draw_sprite(_spr, 0 , x + width /2, y + height / 2);
	
	//Draw count 
	var _count = _arr[1];
	
	draw_set_font(ftUI);
	draw_text(x + 2, y - 3, _count);
}