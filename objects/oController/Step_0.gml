/// @description 
// Press Escape

#region Pause
//if (keyboard_check_pressed(vk_escape)){
//	pauseToggle();
//}
#endregion

//Paused 
if (pause) {
	// Crafting menu scrolling
	var _wheel = mouse_wheel_up() - mouse_wheel_down();
	_wheel *= 8;
	
	cMenuScroll += _wheel;
	
	//Limit
	cMenuScroll = clamp(cMenuScroll, -cMenuHeight,0);
	
	//Apply
	with (oButtonCraft){
		y = ystart + other.cMenuScroll;
	}
	with (oButtonTitle){
		y = ystart + other.cMenuScroll;
	}
	
	with (craftingLightBox){
		y = ystart + other.cMenuScroll;
	}
}

if (setupWoodFences) {
	setupWoodFences = false;
	with (oWoodFence) {
		image_index = computeFenceIndex(x,y, object_index);
	}
}
