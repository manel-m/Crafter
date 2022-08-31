var _alpha = hover ? 0.5 : 1.0;
draw_sprite_ext(sDarkBox, 0 , x, y, width/9, height/9, 0, c_white, _alpha );
draw_sprite_ext(seedType, 0 , x+9, y+9, 1, 1, 0, c_white, _alpha );

//Draw Selctor
if (hover) {
	addSelector();
	
	// Properties 
	var _size = 8;
	var _margin = 4;
	var _cellSize  = _size + _margin * 2;
	
	var _x= device_mouse_x_to_gui(0) + 4;
	var _y = device_mouse_y_to_gui(0);
	
	
	
	//Draw background
	draw_set_color(c_dkgray);
	//draw_rectangle(_x, _y, 40, _y + 44, 0);
	draw_sprite_ext(sWhiteBox, 0 , _x, _y, (_cellSize  +2 )/9,(_cellSize  +2)/9 , 0, c_white, 1 );
	draw_set_color(c_white);
	

	
	//Draw item
	
	switch (other.seedType) {
			case sCarrotInv:
				_spr = sCarrot;
			break;
		
			case sPotatoInv:
				_spr = sPotato;
			break;
		
			case sSunflowerInv:
				_spr = sSunflower;
			break;
		
			default:
				_spr = sCarrot;
		}
		
	draw_sprite(_spr, 0,_x +8, _y +8);
	
}




	

	
	