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
// true when the player is using the shovel
using_shovel = false;
shovel_dirt = noone;
// when the player plants the seeds
using_plant = false;
plant_dirt = noone;

//When the player is watering the plants
using_water = false;
water_dirt = noone;
