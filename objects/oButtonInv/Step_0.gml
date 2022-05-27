/// @description 


// add selector
//if (hover){
//	selectorInst = id;
//}

//use 
if (hover && lclick) {
	//Get array
	var _arr = oController.invList[| slotID];
		
	var _used = false;
	
	if (is_array(_arr)){
		//Vars
		var _item = _arr[0];
		var _count = _arr[1];
		
		//Effects
		instance_activate_object(oPlayer);
		
		switch (_item) {
			case ITEM.POTION:
				with (oPlayer) {
					if (hp < hpMax) {
						hp ++;
						_used= true;
						if (hp > hpMax) hp = hpMax;
					}
				}
			break;
			
			case ITEM.APPLE:
				with (oPlayer){
					if (hp < hpMax){
						hp += 0.5;
						_used = true;
					}
				}
			break;
			
			
			default:
			//case ITEM.BLOCK_WOOD:
			//case ITEM.ANGRY_STATUE:
			//case ITEM.WOODEN_CHEST:
			if (global.itemPlaceable[_item]) != noone {
				pauseToggle();
				
				with (oPlayer) {
					placingObj = global.itemPlaceable[_item];
					
					event_user(0);
				}
				
				_used = true;
			}
				
			break;
		}
	}
	
	
	if (oController.pause) instance_deactivate_object(oPlayer);
	
	//Used
	if (_used) {
		//Reduce count
		_arr[@ 1] --;
		
		//Check if empty
		event_user(0);
		
		show_debug_message("the item was used")
	} else {
		show_debug_message("the item couldn't be used")
	}
	

}

//Remove
if (hover && rclick) {
	 var _arr = oController.invList[| slotID];
	 
	 if (is_array(_arr)) {
		//Re_activate player
		instance_activate_object(oPlayer);
		
		//Drop items
		var _item = _arr[0];
		var _count = _arr[1];
		
		repeat (_count){
			//Item position
			var _x = oPlayer.x + irandom_range(12, 20);
			var _y = oPlayer.y + irandom_range(12, 20);
			
			//Create oItem 
			var _inst = instance_create_layer(_x, _y , "Instances", oItem);
			
			//Set item properties
			with (_inst) {
				type = _item;
				sprite_index = global.itemSprite[_item];
				z = -20;
			}
		}
		
		//Desactivate player & items
		instance_deactivate_object(oPlayer);
		instance_deactivate_object(oItem);
		
		//Remove
		inv_remove(slotID);
		
	 }
}