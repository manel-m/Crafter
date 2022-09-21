/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();

var _x = x- sprite_xoffset;
var _y = y-sprite_yoffset;

draw_sprite_pos(sprite_index,0,
				_x + sway_dx , _y,
				_x + sprite_width + sway_dx, _y,
				_x + sprite_width , _y + sprite_height,
				_x, _y + sprite_height, 1)
				



