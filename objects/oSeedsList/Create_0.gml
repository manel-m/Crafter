/// @description Insert description here
// You can write your code in this editor

var _seedList = [sCarrotInv, sPotatoInv,sSunflowerInv,sBeetInv ];

//Dimensions
var _margin = 5;
var _sep = 2;
var _cellSize = 24;

//Inventory items 
var _sizeX = array_length(_seedList);
var _sizeY = 1;

//Coordinates
var _invX = _margin+ 25;
var _invY = RES.HEIGHT -(_margin + _sep + _cellSize * _sizeY)- 25;

////Create LightBox for the inventory
var _boxMargin = 4;
invBox = instance_create_depth(_invX -_boxMargin, _invY-_boxMargin, 100, oLightBox);
//Set properties 
with (invBox) {
	width = _cellSize* _sizeX + _sep*(_sizeX-1) + _boxMargin*2;
	height = _cellSize *_sizeY + _sep*(_sizeY-1) + _boxMargin*2;
}


for (var i = 0; i < array_length(_seedList); i++) {
	var _inst = instance_create_depth(_invX, _invY+2, 0, oButtonSeedsInv);
	_invX += _cellSize + _sep;
	_inst.seedType = _seedList[i];
}
