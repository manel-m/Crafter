/// @description 

//Juice
Juice_Create();

//Properties 
moveSpeed = 1;
knockbackSpeed = 4;

//Variables 
moveX = 0;
moveY = 0; 

boostX = 0;
boostY = 0;

//Create pickase 
heldItem = instance_create_layer(x,y,"Instances",oPickaxe);

//Create hair
hair = instance_create_layer(x,y, "Instances", oHair);


//Health
hp = 3;
hpMax = hp;

//Placing mode
placingMode = false;
placingObj = noone;
placingInst = noone;

//Show key
showKey = -1;
