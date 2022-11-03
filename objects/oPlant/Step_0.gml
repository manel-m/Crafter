/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();

// Get input 
var _mousePress = mouse_check_button(mb_left);
//if (_mousePress) show_debug_message("oPlant:Step:_mousePressA");

//Get dirt instance at mouse position
var _dirt = instance_position(mouse_x, mouse_y, oDirt);

with (_dirt){
	//Get distance 
	var _dist = distance_to_object(oPlayer);
	
	//Plant seeds
	if (image_index == 1 && _dist < other.breakDistance){
			// Set selector
		other.selectorInst = id;
		//if (_mousePress) show_debug_message("oPlant:Step:_mousePressB");
		//click
		if(!oPlayer.using_plant && _mousePress){
			show_debug_message("oPlant Action")
			oPlayer.using_plant = true;
			oPlayer.start_planting = true;
			oPlayer.plant_dirt = id;
			oPlayer.autoMove = true;
			if (oPlayer.x < x) {
				oPlayer.autoMoveX = x - 7;
			} else {
				oPlayer.autoMoveX = x + 23;
			}
			oPlayer.autoMoveY = y + 3;
			//Reduce hp
			//hp --;
			//Set rotation
			//other.rotation = -80;
			//Set cooldown
			//other.cooldown = 20;
			//change soil assets
			//image_index = 2;
			//seedType = oPlayer.seedType;
		}
	}
}