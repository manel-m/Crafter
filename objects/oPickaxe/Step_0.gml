/// @description 

// Rotation
rotation = lerp(rotation, 45, 0.1);
image_angle = rotation * oPlayer.image_xscale;

// Get input 
var _mousePress = mouse_check_button(mb_left);

//Get breakable instance at mouse position
var _breakable = instance_position(mouse_x, mouse_y, oBreakableParent);

with (_breakable){
	//Get distance 
	var _dist = distance_to_object(oPlayer);
	
	//In range
	if (_dist < other.breakDistance){
		//click
		if(other.cooldown == 0 && _mousePress){
			//Reduce hp
			hp --;
			//Set rotation
			other.rotation = -80;
			//Set cooldown
			other.cooldown = 20;
			
		}
	}
}
//Cooldown 
if (cooldown > 0) cooldown --;
