// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function computeFenceIndex(_x, _y, _oFence) {
	var A = findFence(_x + PLACING_GRID_SIZE , _y, _oFence) != noone;
	var B = findFence(_x , _y - PLACING_GRID_SIZE, _oFence) != noone;
	var C = findFence(_x - PLACING_GRID_SIZE, _y, _oFence) != noone;
	var D = findFence(_x, _y + PLACING_GRID_SIZE, _oFence) != noone;
	return A + B*2 + C*4 + D*8;
}

function findFence(_x, _y, _oFence) {
	for (var i = 0; i < instance_number(_oFence); ++i;) {
		var fence = instance_find(_oFence, i);
		if (fence.visible && fence.x == _x && fence.y == _y) return fence;
	}
	return noone;
}

function updateFenceIfExist(_x, _y, _oFence) {
	var fence = findFence(_x, _y, _oFence);
	if (fence != noone) {
		fence.image_index = computeFenceIndex(_x, _y, _oFence);
	}
}





//function computeFenceIndex(_x, _y) {
//	var A = findFence(_x + PLACING_GRID_SIZE , _y) != noone;
//	var B = findFence(_x , _y - PLACING_GRID_SIZE) != noone;
//	var C = findFence(_x - PLACING_GRID_SIZE, _y) != noone;
//	var D = findFence(_x, _y + PLACING_GRID_SIZE) != noone;
//	return A + B*2 + C*4 + D*8;
//}

//function findFence(_x, _y) {
//	for (var i = 0; i < instance_number(oWoodFence); ++i;) {
//		var fence = instance_find(oWoodFence, i);
//		if (fence.visible && fence.x == _x && fence.y == _y) return fence;
//	}
//	return noone;
//}

//function updateFenceIfExist(_x, _y) {
//	var fence = findFence(_x, _y);
//	if (fence != noone) {
//		fence.image_index = computeFenceIndex(_x, _y);
//	}
//}