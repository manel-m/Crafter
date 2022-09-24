/// @description 

// Rotation
rotation = lerp(rotation, 45, 0.1);
//rotation = lerp(rotation, 45, 0.1);
image_angle = rotation * oPlayer.image_xscale + 45;

//Cooldown 
if (cooldown > 0) cooldown --;

// Get input 
var _mousePress = mouse_check_button(mb_left);

#region enemy
//Get enemy instance at mouse position
var _enemy = instance_position(mouse_x, mouse_y, oEnemyParent);

with (_enemy){
	//Get distance 
	var _dist = distance_to_object(oPlayer);
	
	//In range
	if (_dist < other.attackDistance){
		// Set selector
		other.selectorInst = id;
		//click
		if(other.cooldown == 0 && _mousePress){
			
			//Set rotation
			other.rotation = -80;
			
			//Set cooldown
			other.cooldown = 20;
			
			//Attack
			getAttacked(oPlayer);
			
		}
	}
}
#endregion


// handle dirt
#region farmPlot
//Get dirt instance at mouse position
var _dirt = instance_position(mouse_x, mouse_y, oDirt);

with (_dirt){
	//Get distance 
	var _dist = distance_to_object(oPlayer);
	
	
	//Watering
	if (oPlayer.heldItem.object_index == oWater && image_index == 2 && _dist < other.breakDistance){
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

#endregion
