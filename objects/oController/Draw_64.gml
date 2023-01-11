/// @description 
// Inventory debug
//var _listSize = ds_list_size(invList);

//for (var i=0; i < _listSize; i++){
//	//Get array data
//	var _arr = invList[|i];
//	var _item = _arr[0];
//	var _count = _arr[1];
	
//	//Draw position
//	var _x = 8;
//	var _y = 8 + 20*i;
	
//	// Draw item sprite
//	var _spr = global.itemSprite[_item];
//	draw_sprite(_spr,0, _x, _y);
	
//	//Draw count 
//	draw_text(_x + 4 , _y - 2, _count);
//}

//Hearts
var _margin = 4;
var _startX = _margin;
var _startY = _margin;

var _size = sprite_get_height(sHeart);
var _dist = _size + _margin;


with (oPlayer) {
	// Loop
	for(var i = 0; i< hp; i++) {
		//Sub-image to draw 
		var _subImg = 0;
		
		if (hp - i <= 0.5) {
			_subImg = 1;
		}
		
		// Draw heart
		//draw_sprite(sHeart, _subImg, _startX + _dist * i, _startY);
	
	}
}

if (is_array(movingArray)) {
	//Item data
	var _item = movingArray[0];
	var _spr = global.itemSprite[_item];
	
	//Mouse position
	var _mouseX = device_mouse_x_to_gui(0);
	var _mouseY = device_mouse_y_to_gui(0);
	
	//Draw item
	draw_sprite(_spr, 0, _mouseX, _mouseY);

}





