/// @description Draw Button

var _alpha = hover ? 0.5 : 1.0;
draw_sprite_ext(sDarkBox, 0 , x, y, width/9, height/9, 0, c_white, _alpha );
draw_sprite_ext(seedType, 0 , x+9, y+9, 1, 1, 0, c_white, _alpha );

//Draw Selctor
if (hover) {
	addSelector();
}
