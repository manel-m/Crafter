/// @description 
Juice_Draw(x,y);

//Show key

if (showKey != -1) {
	
	var _scale = 1 + sin (current_time / 150) * 0.2;
	
	draw_sprite_ext(showKey, 0, x, y - 20, _scale, _scale, 0, -1, 1 );
	
	showKey = -1
}