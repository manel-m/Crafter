/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();

// Get input 
var _mousePress = mouse_check_button(mb_left);

#region buildable
//Get breakable instance at mouse position
var _buildable = instance_position(mouse_x, mouse_y, oHouse1);

with (_buildable){
	//Get distance 
	var _dist = distance_to_object(oPlayer);
	
	//In range
	if ( oHouse1.notBuilt && _dist < other.breakDistance){
		
		// Set selector
		other.selectorInst = id;
		//click
		if(!oPlayer.using_hammer && _mousePress){
		
			oPlayer.using_hammer = true;
			oPlayer.start_building = true;
			oPlayer.hammer_buildable = id;
			oPlayer.autoMove = true;
			if (oPlayer.x < x) {
				oPlayer.autoMoveX = x - 20;
			} else {
				oPlayer.autoMoveX = x + 20;
			}
			oPlayer.autoMoveY = y - 10 ; 
		
		}
	}
}
#endregion


