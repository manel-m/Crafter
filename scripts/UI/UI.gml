// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function createButtonCraft(_x, _y, _w, _h, _item){
	
	//Create button 
	var _inst = instance_create_depth(_x, _y, 0, oButtonCraft);
	
	with (_inst) {
		width = _w;
		height = _h;
		
		item = _item;
	
	}
	
	return _inst

}

//function createToolButton(_x, _y, _toolSprite) {
	
//	//Create button 
//	var _inst = instance_create_depth(_x, _y, 0, oButtonTool);
	
//	with (_inst) {
//		toolSprite = _toolSprite;
	
//	}
	
//	return _inst
//}

function createButtonTitle(_x, _y, _w, _h, _title){
	
	//Create button 
	var _inst = instance_create_depth(_x, _y, 0, oButtonTitle);
	
	with (_inst) {
		width = _w;
		height = _h;
		
		title = _title;
	
	}
	
	return _inst

}


function createButtonMoveable(_x, _y, _w, _h, _list, _slot) {
	
	//Create button
	var _inst = instance_create_depth(_x, _y, 0, oButtonInvMoveable);
	
	with (_inst) {
		width = _w;
		height = _h;
		
		list = _list;
		slotID = _slot;
	
	}
	
	return _inst
}

function addSelector () {
	//Draw selector in all four corners 
	draw_sprite_ext(sSelector, selectorFrame, x, y, 1, 1, 0, -1,image_alpha );
	draw_sprite_ext(sSelector, selectorFrame, x+ width, y, 1, 1,-90, -1,image_alpha );
	draw_sprite_ext(sSelector, selectorFrame, x+ width, y+height, 1, 1, 180, -1,image_alpha );
	draw_sprite_ext(sSelector, selectorFrame, x, y+height, 1, 1, 90, -1,image_alpha );

	//Animation
	selectorFrame +=0.10;
	if (selectorFrame >= selectorFrameNumber) selectorFrame -= selectorFrameNumber;

}

















