/// @description 

// Rotation
rotation = lerp(rotation, 45, 0.1);
//rotation = lerp(rotation, 45, 0.1);
image_angle = rotation * oPlayer.image_xscale + 45;

// Get input 
var _mousePress = mouse_check_button(mb_left);

#region breakable
//Get breakable instance at mouse position
var _breakable = instance_position(mouse_x, mouse_y, oBreakableParent);

with (_breakable){
	//Get distance 
	var _dist = distance_to_object(oPlayer);
	
	//In range
	if (!nonBreakable && _dist < other.breakDistance){
		// Set selector
		other.selectorInst = id;
		//click
		if(other.cooldown == 0 && _mousePress){
			//Reduce hp
			hp --;
			
			//Set rotation
			other.rotation = -80;
			
			//Set cooldown
			other.cooldown = 20;
			
			//Juice
			Juice_ApplyScaling(0.7, 1.3, 1, 1);
			Juice_ApplyFlash(c_white, 1);
			
		}
	}
}
#endregion

//if (instance_exists(selectorInst)) {
//	cursor_sprite = sPickaxe;

//} else {
//	cursor_sprite = sCursor;
//}

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

//Cooldown 
if (cooldown > 0) cooldown --;
