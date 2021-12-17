/// @description 

var _palyerExists = instance_exists(oPlayer);
var _heldItem = noone;

if (_palyerExists) _heldItem = oPlayer.heldItem;
// depth
with (all){
	depth = -bbox_bottom;
	
	//held item
	if (_palyerExists && _heldItem == id){
		depth -= 12;
	}
}