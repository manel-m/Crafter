/// @description Enable placing mode

//Deactivate pickaxe
instance_deactivate_object(heldItem);

//Enable placing mode
placingMode = true;

//Create placing instances
placingInst = instance_create_layer(mouse_x, mouse_y, "Instances", placingObj);
placingInst.image_alpha = 0.5;
if (placingObj == oHouse1) placingInst.notBuilt = true;

//Clear mouse input
mouse_clear(mb_left);
