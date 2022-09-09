/// @description Insert description here
// You can write your code in this editor



if (hover && lclick) {
	var _seedObject = noone;
	
	switch (seedType) {
		case sCarrotInv:
			_seedObject = oPlant;
		break;
		
		case sPotatoInv:
			_seedObject = oPlant;
		break;
		
		case sSunflowerInv:
			_seedObject = oPlant;
		break;
		
		case sBeetInv:
			_seedObject = oPlant;
		break;
		
		default:
			_seedObject = oPlant;	
	}
	

	with (oPlayer) {
		instance_destroy(heldItem);
		heldItem = instance_create_layer(x,y,"Instances",_seedObject); 
		show_debug_message("sprite selected");
		seedType = other.seedType;
	}
	
	with (oButtonSelectSeeds) {
	// change tool inside the button
		switch (other.seedType) {
			case sCarrotInv:
				seedSprite = sCarrot;
			break;
		
			case sPotatoInv:
				seedSprite = sPotato;
			break;
		
			case sSunflowerInv:
				seedSprite = sSunflower;
			break;
			
			case sBeetInv:
				seedSprite = sBeetroot;
			break;
		
			default:
				seedSprite = sCarrot;
		}
		
		
	
		//seedSprite = other.seedType;
		event_user(0);
	}
	
	
}