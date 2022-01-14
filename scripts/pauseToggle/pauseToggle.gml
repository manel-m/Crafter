// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function pauseToggle(){
 with (oController) {
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
}