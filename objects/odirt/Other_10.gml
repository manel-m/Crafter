/// @description Insert description here
// You can write your code in this editor

//create instance here
var _seedObject = noone;

switch (seedType) {
		case sCarrotInv:
			_seedObject = oCarrot;
		break;
		
		case sPotatoInv:
			_seedObject = oPotato;
		break;
		
		case sSunflowerInv:
			_seedObject = oSunflower;
		break;
		
		case sBeetInv:
			_seedObject = oBeet;
		break;

	}
	

var crop = instance_create_layer(x+8,y+10,"Instances",_seedObject);
crop.dirt = id;

image_index = 3
alarm[1] = 30;


//show_debug_message("CARROT INSTANCE CREATED")