// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function inv_add(_item, _count) {
	var _list = oController.invList;
	
	// Item already exists in list
	var _listSize = ds_list_size(_list);
	
	for (var i = 0; i < _listSize; i++) {
		// Get array
		var _arr = _list[| i];
		//Check Item 
		if (is_array(_arr) && _arr[0] == _item) {
			
			var _maxStackSize = global.itemStackSize[_item];
			var _updatedStackSize = _arr[1] + _count;
			
			_arr[@ 1] = min(_updatedStackSize, _maxStackSize);
			
			// Continue if more if left
			var _leftover = _updatedStackSize - _maxStackSize;
			
			if (_leftover > 0) {
				_count = _leftover;
				continue;
			}
			
			return true;
		}
	}
	
	//Insert array
	for (var i = 0 ; i < _listSize; i++) {
		//Get array
		var _arr = _list[| i];
		
		//Empty slot
		if (!is_array(_arr)) {
			_list[| i] = [_item, _count];
			
			return true;
		}
	}
	
	//Inventory is full
	if (_listSize >= INV_SIZE) {
		return false;
	}
	
	//Create new array
	var _arr = [_item, _count];
	ds_list_add(_list, _arr);
	return true;
}

function inv_get_item_array(_item){
	//Get list
	var _list = oController.invList;
	var _listSize = ds_list_size(_list);
	
	//Get array from list
	for (var i = 0; i < _listSize; i++){
		//Array data
		var _arr = _list[| i];
		
		if (is_array(_arr)) {
			var _arrItem = _arr[0];
			
			//Check
			if (_arrItem == _item) {
				return _arr;
			}
		}
	}
	return -1 ;
}

function inv_remove(_pos) {
	//Remove 
	var _list = oController.invList;
	_list[| _pos] = -1;
}