/// @description Insert description here
// You can write your code in this editor

addSelector();

var _scale = 0.5 + (sin(toolScale)+1)/4;
draw_sprite_ext(sShovelInv,0,x+8,y+8,_scale,_scale,0,c_white,image_alpha);
