// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collision(_x, _y){
	return place_meeting(_x,_y, oCollision);
}

function collision_entity (_x, _y) {
	return place_meeting(_x,_y, oPlayer) || place_meeting(_x,_y, oNPCParent) ;
}

function collision_roads (_x, _y) {
	return place_meeting(_x,_y, oPlayer) || place_meeting(_x,_y, oRoadsCollision) ;
}

