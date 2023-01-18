/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// Get input 
var _mousePress = mouse_check_button(mb_left);

//Get dirt instance at mouse position
var _dirt = instance_position(mouse_x, mouse_y, oDirt);

with (_dirt){
	//Get distance 
	var _dist = distance_to_object(oPlayer);
	
	// Dig holes
	if ((image_index == 0 || image_index == 4) && _dist < other.breakDistance){
		// Set selector
		if (!oPlayer.using_shovel) other.selectorInst = id;
		
		//click
		if(!oPlayer.using_shovel&& _mousePress){
			//oTutoSelector.visible = false;
			with oTutoSelector {
				event_user(0);
			}
			oPlayer.using_shovel = true;
			oPlayer.start_shovel = true;
			oPlayer.shovel_dirt = id;
			oPlayer.autoMove = true;
			if (oPlayer.x < x) {
				oPlayer.autoMoveX = x - 7;
			} else {
				oPlayer.autoMoveX = x + 23;
			}
			oPlayer.autoMoveY = y + 3; 

		}
	}
}
		