/// @description Insert description here
// You can write your code in this editor

show_debug_message("TESTING ALARM")
//drawSeed = true;
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
	

instance_create_layer(x+8,y+10,"Instances",_seedObject); 
image_index = 4
