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
	
	//Watering
	if (image_index == 2 && _dist < other.breakDistance){
			// Set selector
		other.selectorInst = id;
		//click
		if(!oPlayer.using_water && _mousePress){
			
			oPlayer.using_water = true;
			oPlayer.start_watering = true;
			oPlayer.image_index = 0;
			oPlayer.water_dirt = id;
			oPlayer.alarm[0] = room_speed * 1 // alarm in oPlayer to end water animation
			oPlayer.autoMove = true;
			if (oPlayer.x < x) {
				oPlayer.autoMoveX = x - 7;
			} else {
				oPlayer.autoMoveX = x + 23;
			}
			oPlayer.autoMoveY = y ; 
		}
	}

}

