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



//Health
hp = 3;
hpMax = hp;

//Placing mode
placingMode = false;
placingObj = noone;
placingInst = noone;

//Show key
showKey = -1;

//save seedType from seed inventory
seedType = sCarrotInv;


// true when the player is using the pickaxe
using_pickaxe = false;
pickaxe_breakable = noone;
start_pichaxe = false; // will be true when event Step is called first time when using_shovel
// true when the player is using the shovel
using_shovel = false;
shovel_dirt = noone;
start_shovel = false; // will be true when event Step is called first time when using_shovel
// when the player plants the seeds
using_plant = false;
plant_dirt = noone;
start_planting = false; // will be true when event Step is called first time when using_shovel

//When the player is watering the plants
using_water = false;
water_dirt = noone;

//auto Move when player moves to the target
autoMove = false;
autoMoveX = 0;
autoMoveY = 0;
