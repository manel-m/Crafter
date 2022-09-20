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
		if(other.cooldown == 0 && _mousePress){
			//Reduce hp
			//hp --;
			
			//Set rotation
			other.rotation = -80;
			
			//Set cooldown
			other.cooldown = 20;
			
			//change soil assets
			image_index = 3;
			event_user(0); // oDirt:User Event 0
			
			
		}
	}

}

