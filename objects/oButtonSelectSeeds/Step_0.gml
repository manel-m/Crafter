/// @description Insert description here
// You can write your code in this editor
if (hover && lclick) {
	if (seedSetOpen){
		event_user(0);
		
	} else {
		show_debug_message("opening seedset");
		instance_create_depth(x+10,y-10, 0, oSeedsList);
		seedSetOpen = true
	} 
}

