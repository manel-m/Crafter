/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();


if (sway_right){
	//sway_dx= lerp(sway_dx, sway_max, sway_speed);
	sway_dx += sway_speed;
	if (sway_dx >= sway_max) sway_right = false

} else {
	//sway_dx = lerp(sway_dx,-sway_max,sway_speed);
	sway_dx -= sway_speed;
	if (sway_dx <= -sway_max) sway_right = true;
}