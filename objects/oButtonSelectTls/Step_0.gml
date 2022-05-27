/// @description Insert description here
// You can write your code in this editor
if (hover && lclick) {
	if (toolSetOpen){
		show_debug_message("closing toolset");
		instance_destroy(oToolsList);
		toolSetOpen = false;
		
	} else {
		show_debug_message("opening toolset");
		instance_create_depth(x+10,y-10, 0, oToolsList);
		toolSetOpen = true
	} 
}

