/// @description 
//Juice
Juice_Step();

if (autoMove) {
	var _inputX  = sign(autoMoveX - x);
	var _inputY = sign(autoMoveY - y);
	
	if (x == autoMoveX && y == autoMoveY) autoMove = false;

} else if (!using_pickaxe && !using_shovel && !using_plant && !using_water) {
	// Get input buttons 
	var _right = keyboard_check(vk_right)or keyboard_check(ord("D"));
	var _left = keyboard_check(vk_left)or keyboard_check(ord("A"));
	var _up = keyboard_check(vk_up)or keyboard_check(ord("W"));
	var _down = keyboard_check(vk_down)or keyboard_check(ord("S"));

	//Inputs axis
	var _inputX = _right - _left;
	var _inputY =  _down- _up;
} else {
	var _inputX = 0;
	var _inputY = 0;
}


// Get movment speed 
moveX= _inputX * moveSpeed;
moveY= _inputY * moveSpeed;

//Boost
moveX += round(boostX);
moveY += round(boostY);

boostX = lerp(boostX, 0, 0.1);
boostY = lerp(boostY, 0, 0.1);

//Collisions 
if(collision(x + moveX,y)){
	while (!collision(x + sign(moveX),y)){
		x += sign(moveX);
	}
	moveX = 0;
	//show_debug_message("PLAYER COLLISION")
}

if (collision(x, y + moveY)){
	while (!collision(x ,y + sign(moveY))){
		y += sign(moveY);
	}
	moveY = 0;
	//show_debug_message("PLAYER COLLISION")

}

if (moveX ==0 && moveY == 0 && autoMove) autoMove = false;

//Move instance
x += moveX;
y += moveY;

if (using_pickaxe && !autoMove) {
	//show_debug_message("USING_PICKAXE")
	sprite_index = sPlayer_Pickaxe ;
	if (start_pichaxe) 	{
		image_index = 0; // restart animation to 0
		start_pichaxe = false;
	}

	if (image_index >= image_number - 1) {
		using_pickaxe = false;
	}
} else if (using_shovel && !autoMove) {
	if (start_shovel) {
		//show_message("start shovel, x="+string(x)+", dirt.x="+string(shovel_dirt.x));
		//// we just started using the shovel
		//// make sure we are facing the dirt
		if (x > shovel_dirt.x) // player should face left
			image_xscale = -1
		else
			image_xscale = 1;
		image_index = 0; // restart animation to 0
		start_shovel = false;
	}
	//show_debug_message("USING_SHOVEL")
	sprite_index = sPlayer_Shovel ;
	if (image_index >= image_number - 1) {
		using_shovel = false;
	}
} else if (using_plant && !autoMove) {
	sprite_index = sPlayer_Plant ;
	if (start_planting) {
		if (x > plant_dirt.x) // player should face left
			image_xscale = -1
		else
			image_xscale = 1;
		image_index = 0; // restart animation to 0
		start_planting = false;
	}
	if (image_index >= image_number - 1) {
		using_plant = false;
		with (plant_dirt){
			event_user(2);
		}
	}
} else if (using_water && !autoMove) {

	sprite_index = sPlayer_Water ;
	if (start_watering) {
		if (x > water_dirt.x) // player should face left
			image_xscale = -1
		else
			image_xscale = 1;
	image_index = 0; // restart animation to 0
	start_watering = false;
	}
	//if (image_index >= image_number - 1) {
	//	// end using water tool
	//	using_water = false;
	//	with (water_dirt){
	//		event_user(0);
	//	}
	//}
} else if (moveX != 0 or moveY != 0 ){
		//Animation: Move 
	sprite_index = sPlayer_Move;
} else {
	//Animation : Idle
	sprite_index = sPlayer_Idle;
}

//Direction
var _signMouse = sign(mouse_x - x);
if (_signMouse != 0 && !autoMove && !using_pickaxe && !using_shovel && !using_plant && !using_water){
	image_xscale = _signMouse;
}

//Animation speed 
if (moveX != 0 && sign(moveX) != _signMouse) {
	image_speed = -1;
}
else {
	image_speed = 1;
}

//Die

if (hp <= 0) {
	instance_destroy();
	oController.alarm[0] = 60;
}

