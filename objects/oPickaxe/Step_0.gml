/// @description Insert description here
// You can write your code in this editor

event_inherited();

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
		if(!oPlayer.using_pickaxe && _mousePress){
		
			oPlayer.using_pickaxe = true;
			oPlayer.start_pichaxe = true;
			oPlayer.image_index = 0;
			oPlayer.pickaxe_breakable = id;
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
