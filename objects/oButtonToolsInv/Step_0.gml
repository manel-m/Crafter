/// @description Insert description here
// You can write your code in this editor



if (hover && lclick) {
	var _toolObject = noone;
	
	switch (toolType) {
		case sShovelInv:
			_toolObject = oShovel;
		break;
		
		case sHammerInv:
			_toolObject = oHammer;
		break;
		
		case sSwordInv:
			_toolObject = oSword;
		break;
		
		case sAxeInv:
			_toolObject = oAxe;
		break;
		
		case sWaterInv:
			_toolObject = oWater;
		break;
		
		case sPlantInv:
			_toolObject = oPlant;
		break;
		
		default:
			_toolObject = oPickaxe;	
	}
	
	with (oButtonSelectSeeds) {
		visible = (_toolObject == oPlant);
	}
	//with (oButtonSelectSeeds) {
	//	if (_toolObject == oPlant) {
	//		visible = true;
	//	} else {
	//		visible = false;
	//	}
	//}

	with (oPlayer) {
		instance_destroy(heldItem);
		heldItem = instance_create_layer(x,y,"Instances",_toolObject); 
		show_debug_message("sprite selected");
	}
	
	with (oButtonSelectTls) {
	// change tool inside the button
		toolSprite = other.toolType;
		event_user(0);
	}
	
	
}