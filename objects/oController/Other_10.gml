/// @description Create Inv and crafting UI

#region Inventory
//Dimensions
var _margin = 10;
var _sep = 4;
var _cellSize = 24;

//Inventory items 
var _sizeX = 6;
var _sizeY = 2;

//Coordinates
var _invX = _margin;
var _invY = RES.HEIGHT -(_margin + _sep + _cellSize * _sizeY);

//Create LightBox for the inventory
var _boxMargin = 5;
var _InventoryBox = instance_create_depth(_invX -_boxMargin, _invY-_boxMargin, 0, oLightBox);
//Set properties 
with (_InventoryBox) {
	width = _cellSize* _sizeX + _sep*(_sizeX-1) + _boxMargin*2;
	height = _cellSize *_sizeY + _sep*(_sizeY-1) + _boxMargin*2;
}

	
//Create buttons
var _x= 0;
var _y= 0;

for (var i=0; i< INV_SIZE; i++){
	//Button coordinates 
	var _buttonX = _invX + (_sep + _cellSize) * _x;
	var _buttonY = _invY + (_sep + _cellSize) * _y;
	
	//Create button 
	var _button = instance_create_depth(_buttonX, _buttonY, 0, oButtonInv);
	
	//Set properties 
	with (_button) {
		slotID = i;
		
		width = _cellSize;
		height = _cellSize;
	}
	
	//Move position
	_x ++;
	if (_x == _sizeX){
		_x = 0;
		_y ++
	}
	
}

#endregion

#region Crafting

//Properties

var _w = 120;
var _h = 26;
var _x = RES.WIDTH -(_w + _margin);
var _y = _sep;

var _titleH = 12;


//Create LightBox for the crafting menu
var _boxMargin = _x - 5;
craftingLightBox = instance_create_depth(_boxMargin, _y+ 2, 0, oLightBox);


// Create crafting buttons
var _arr = global.craftingMenu;
var _size = array_length(_arr);

for (var i = 0; i< _size; i ++) {
	var _item = _arr[i];
	
	//Title
	
	if (is_string(_item)) {
		// create button title
		createButtonTitle(_x, _y, _w, _titleH, _item);
		
		_y += (_titleH + _sep);
	}
	
	// Crafting button
	else {
		createButtonCraft(_x, _y, _w, _h, _item);
		
		_y += (_h + _sep);
	
	}
}

//Set properties 
with (craftingLightBox) {
	width = _w + 10//_cellSize* _sizeX + _sep*(_sizeX-1) + _boxMargin*2;
	height = (_y - _sep) + 0//_cellSize *_sizeY + _sep*(_sizeY-1) + _boxMargin*2;
}


cMenuHeight = _y - RES.HEIGHT;

#endregion