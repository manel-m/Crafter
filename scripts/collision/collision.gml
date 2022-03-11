// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collision(_x, _y){
	return place_meeting(_x,_y, oCollision);
}

function collision_entity (_x, _y) {
	return place_meeting(_x,_y, oPlayer) || place_meeting(_x,_y, oNPCParent) ;
}

function computeFenceIndex(_x, _y) {
	var A = place_meeting(_x + PLACING_GRID_SIZE , _y, oWoodFence);
	var B = place_meeting(_x , _y - PLACING_GRID_SIZE , oWoodFence);
	var C = place_meeting(_x - PLACING_GRID_SIZE, _y , oWoodFence);
	var D = place_meeting(_x, _y + PLACING_GRID_SIZE, oWoodFence);
	return A + B*2 + C*3 + D*8;
}