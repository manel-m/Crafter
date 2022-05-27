/// @description Insert description here
// You can write your code in this editor
//Dimensions
var _margin = 5;
var _sep = 4;
var _cellSize = 24;

//Inventory items 
var _sizeX = 6;
var _sizeY = 1;

//Coordinates
var _invX = _margin+ 25;
var _invY = RES.HEIGHT -(_margin + _sep + _cellSize * _sizeY);

//Create LightBox for the inventory
var _boxMargin = 5;
invBox = instance_create_depth(_invX -_boxMargin, _invY-_boxMargin, 0, oLightBox);
//Set properties 
with (invBox) {
	width = _cellSize* _sizeX + _sep*(_sizeX-1) + _boxMargin*2;
	height = _cellSize *_sizeY + _sep*(_sizeY-1) + _boxMargin*2;
}