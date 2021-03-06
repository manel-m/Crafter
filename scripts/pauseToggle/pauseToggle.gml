// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function pauseToggle(_chestID){
	
	//Moving an array
	if (is_array(oController.movingArray)) {
		return;
	}
	

	with (oPlayer) {
		if (placingMode) {
			event_user(1);
		}
	}
	
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
		
			//Chest UI
			if (!is_undefined(_chestID)) {
				chestID = _chestID;
				event_user(2);
			} else {
			//UI
				event_user(0);
			}
			
		
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