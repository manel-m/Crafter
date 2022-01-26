/// @description 
//Move held Item
if (instance_exists(heldItem)){
	heldItem.x = x - 3 *image_xscale;
	heldItem.y = y + 3;
}

//Placing mode
if (placingMode && instance_exists(placingInst)) {
	var _colliding = false;
	
	//Mode instance
	with (placingInst) {
		x = round(mouse_x / PLACING_GRID_SIZE) * PLACING_GRID_SIZE;
		y = round(mouse_y / PLACING_GRID_SIZE) * PLACING_GRID_SIZE;
		
		//Collision
		_colliding = collision(x,y) || collision_entity(x,y);
		
	}
	
	//Colliding
	if (_colliding) placingInst.image_blend = c_red;
	else placingInst.image_blend = c_white;
	
	//Place
	if (!_colliding && mouse_check_button_pressed(mb_left)) {
		event_user(1);
	}
}

//Open chest
var _chest = collision_circle(x, y, 12, oChestParent, false, false);

if (instance_exists(_chest)) {
	//show E key
	showKey = sButtonE;
	
	//Open chest
	if (keyboard_check_pressed(ord("E"))) {
		pauseToggle(_chest);
	}
}



