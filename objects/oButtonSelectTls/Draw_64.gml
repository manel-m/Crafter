/// @description Insert description here
// You can write your code in this editor

//var _x= device_mouse_x_to_gui(0) + 4;
//	var _y = device_mouse_y_to_gui(0);
//draw_sprite_ext(sButtonSelectTls, 0 , _x, _y, 1, 1, 0, c_white, 1 );


if !hidetuto {
	var _scale = 0.5 + (sin(buttonScale)+1)/8;

} else {
	_scale = 1;
}
//image_xscale = _scale; 
//image_yscale = _scale;
draw_self()
//draw_sprite(toolSprite,0,x+ width/2,y + height/2);



draw_sprite_ext(toolSprite,0,x+ width/2,y + height/2,_scale,_scale,0,c_white,image_alpha);

