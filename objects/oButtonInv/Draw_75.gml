/// @description Insert description here
// You can write your code in this editor


//Draw button
var _alpha = hover ? 0.5 : 1.0;
draw_sprite_ext(sDarkBox, 0 , x, y, width/9, height/9, 0, c_white, _alpha );

//Get array from list
var _list = oController.invList;
var _arr = _list[|slotID];

//Draw item
if (is_array(_arr)){
	var _item = _arr[0];
	var _spr = global.itemSprite[_item];
	
	draw_sprite(_spr, 0 , x + width /2, y + height / 2);
	
	//Draw count 
	var _count = _arr[1];
	
	draw_sprite_ext(sWhiteBox, 0 , x + 18, y-2, 1, 1, 0, c_white, _alpha );

	
	draw_set_font(ftUI);
	draw_set_color(c_black);
	draw_text(x + 21, y-6 , _count);
	draw_set_color(c_white);

}

//Draw Selctor
if (hover) {
	//Draw selector in all four corners 
	draw_sprite_ext(sSelector, selectorFrame, x, y, 1, 1, 0, -1,1 );
	draw_sprite_ext(sSelector, selectorFrame, x+ width, y, 1, 1,-90, -1,1 );
	draw_sprite_ext(sSelector, selectorFrame, x+ width, y+height, 1, 1, 180, -1,1 );
	draw_sprite_ext(sSelector, selectorFrame, x, y+height, 1, 1, 90, -1,1 );

	//Animation
	selectorFrame +=0.10;
	if (selectorFrame >= selectorFrameNumber) selectorFrame -= selectorFrameNumber;
}