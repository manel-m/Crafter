/// @description 

if (hover && lclick) {
	// Already moving an array
	if (is_array(oController.movingArray)) {
		var _arr = list[| slotID];
		
		//My slot is empty
		if (!is_array(_arr)) {
			list[| slotID] = oController.movingArray;
			oController.movingArray = -1;
		}  else {
			//My slot has an item
			var _myItem = _arr[0];
			var _newItem = oController.movingArray[0];

			//Same items
			if (_myItem == _newItem) {
				_arr[@ 1] += oController.movingArray[1]; 
				oController.movingArray = -1;
			}
		}
		
	} else {
		// Not moving anything
		var _arr = list[| slotID];
		
		if (is_array(_arr)) {
			oController.movingArray = _arr;
			list[| slotID] = -1;
		}
	}
}
