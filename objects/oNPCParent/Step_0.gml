/// @description 


// Get movment speed 
moveX= inputX * moveSpeed;
moveY= inputY * moveSpeed;

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
}

if (collision(x, y + moveY)){
	while (!collision(x ,y + sign(moveY))){
		y += sign(moveY);
	}
	moveY = 0;
}

//Move instance
x += moveX;
y += moveY;


//Animation: Move 
if(moveX != 0 or moveY != 0){
	sprite_index = spriteMove;
	
}

//Animation : Idle
else {
	sprite_index = spriteIdle;
}

//Direction
var _sign = sign(moveX);
if (_sign != 0 ){
	image_xscale = _sign;
}

//Animation speed 
if (moveX != 0 && sign(moveX) != _sign) {
	image_speed = -1;
}
else {
	image_speed = 1;
}

//Die

if (hp <= 0) {
	instance_destroy();
}

