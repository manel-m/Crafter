/// @description 
//Juice
Juice_Step();

// Get input buttons 
var _right = keyboard_check(vk_right)or keyboard_check(ord("D"));
var _left = keyboard_check(vk_left)or keyboard_check(ord("A"));
var _up = keyboard_check(vk_up)or keyboard_check(ord("W"));
var _down = keyboard_check(vk_down)or keyboard_check(ord("S"));

//Inputs axis
var _inputX = _right - _left;
var _inputY =  _down- _up;

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

//Move instance
x += moveX;
y += moveY;

if (using_pickaxe) {
	//show_debug_message("USING_PICKAXE")
	sprite_index = sPlayer_Pickaxe ;
	if (image_index >= image_number - 1) {
		using_pickaxe = false;
		with (pickaxe_breakable){
			event_user(0);
		}
	}
} else if (using_shovel) {
	//show_debug_message("USING_SHOVEL")
	sprite_index = sPlayer_Shovel ;
	if (image_index >= image_number - 1) {
		using_shovel = false;
		with (shovel_dirt){
			event_user(1);
		}
	}
} else if (using_plant) {
	show_debug_message("PLAYER IS PLANTING ?????????????????????")

	sprite_index = sPlayer_Plant ;
	if (image_index >= image_number - 1) {
		using_plant = false;
		with (plant_dirt){
			event_user(2);
		}
	}
} else if (moveX != 0 or moveY != 0){
		//Animation: Move 
	sprite_index = sPlayer_Move;
} else {
	//Animation : Idle
	sprite_index = sPlayer_Idle;
}

//Direction
var _signMouse = sign(mouse_x - x);
if (_signMouse != 0 ){
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

