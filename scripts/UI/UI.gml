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