/// @description Insert description here
// You can write your code in this editor



if (hover && lclick) {
	with (oPlayer) {
		heldItem = instance_create_layer(x,y,"Instances",oButtonToolsInv.toolType); 
		show_debug_message("sprite selected");
		
	}
	
	with (oButtonSelectTls) {
	// change tool inside the button
		toolSprite = other.toolType;
		event_user(0);
	}
	
	
}