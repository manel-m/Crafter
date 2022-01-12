/// @description 
// Press Escape

#region Pause
if (keyboard_check_pressed(vk_escape)){
	//pause 
	
	if (!pause){
		pause = true;
		
		//Desactivate instances
		instance_deactivate_all(true);
		
		//Create surface
		pauseSurf= surface_create(RES.WIDTH, RES.HEIGHT);
		
		//copy
		surface_copy(pauseSurf,0,0,application_surface);
		
		//UI
		event_user(0);
		
	}
	// Resume
	else {
		pause = false;
		
		//Activate instances
		instance_activate_all();
		
		//Remove surface
		if (surface_exists(pauseSurf)){
			surface_free(pauseSurf);
		}
		
		//UI
		event_user(1);
			
	}
}
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
}