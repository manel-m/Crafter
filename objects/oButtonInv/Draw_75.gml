/// @description Insert description here
// You can write your code in this editor

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