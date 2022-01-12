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

function createButtonTitle(_x, _y, _w, _h, _title){
	
	show_debug_message("create button title fonction called")
	//Create button 
	var _inst = instance_create_depth(_x, _y, 0, oButtonTitle);
	
	with (_inst) {
		width = _w;
		height = _h;
		
		title = _title;
	
	}
	
	return _inst

}

