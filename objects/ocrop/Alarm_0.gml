/// @description Insert description here
// You can write your code in this editor

/// @description Change image index to 1
image_index++;

if (image_index < 4) {
	alarm[0] = grow_speed * random_range(1,3);
} else {
	//show_debug_message("non breakable");
	nonBreakable = false;
	Juice_ApplyFlash(c_white, 1);
	Juice_ApplySway(2,0.025);
}
Juice_ApplyScaling(0.7, 1.4, 1, 1);

