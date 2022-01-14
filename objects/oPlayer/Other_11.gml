/// @description Disable placing mode

//Activate pickaxe
instance_activate_object(heldItem);

//Disable placing mode
placingMode = false;

//Reset Placing instance 
placingInst.image_alpha = 1;
placingInst = noone;

//Clear mouse input
mouse_clear(mb_left);