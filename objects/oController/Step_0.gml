/// @description 
// Press Escape
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
			
	}
}