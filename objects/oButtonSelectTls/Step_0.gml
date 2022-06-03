/// @description Insert description here
// You can write your code in this editor

if (hover && lclick) {
	if (toolSetOpen){
		event_user(0);
	} else {
		show_debug_message("opening toolset");
		with (oButtonSelectSeeds) {
				event_user(0);
		}
		
		instance_create_depth(x+10,y-10, 0, oToolsList);
		toolSetOpen = true
	} 
}

