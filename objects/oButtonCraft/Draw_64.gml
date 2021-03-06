/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
//event_inherited();

//Crafting animation
if (craftAnim > 0 ) {
	draw_set_color(c_black);
	draw_rectangle(x+3, y+3, x + width * craftAnim, (y + height) -4, 0);
	draw_set_color(c_white);
}

//Properties
var _margin = 4;

//Calculate image scale
var _size = 8;
var _sizeNew = height - _margin * 2;
var _scale = _sizeNew / _size;


//Draw button
var _alpha = hover ? 0.5 : 1.0;
draw_sprite_ext(sDarkBox, 0 , x, y, width/9, height/9, 0, c_white, _alpha );


//Draw item 
var _spr = global.itemSprite[item];
draw_sprite_ext(_spr,0,x + _margin + _sizeNew/2, y+ _margin + _sizeNew/2,
	_scale, _scale , 0, c_white, 1);
	
// Draw name 
var _name = global.itemName[item];
draw_set_font(ftUI);
draw_set_color(c_white);
draw_text(x+ _margin * 2 + _sizeNew, y + _margin - 2 , _name)
draw_set_color(c_black);



