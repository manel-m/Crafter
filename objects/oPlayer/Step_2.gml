/// @description 
//Move held Item
if (instance_exists(heldItem)){
	heldItem.x = x - 3 *image_xscale;
	heldItem.y = y + 3;
}

//Placing mode
if (placingMode && instance_exists(placingInst)) {
	//Mode instance
	with (placingInst) {
		x = round(mouse_x / PLACING_GRID_SIZE) * PLACING_GRID_SIZE;
		y = round(mouse_y / PLACING_GRID_SIZE) * PLACING_GRID_SIZE;
	}
	
	//Place
	if (mouse_check_button_pressed(mb_left)) {
		event_user(1);
	}
}
