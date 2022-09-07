/// @description 

var _playerExists = instance_exists(oPlayer);
var _heldItem = noone;
var _hair = noone;

if (_playerExists) _heldItem = oPlayer.heldItem;
if (_playerExists) _hair = oPlayer.hair;
// depth
with (all){
	if (!object_is_ancestor(object_index, oGUI) && object_index != oDirt) {
		depth = -bbox_bottom;
	
		//held item
		if (_playerExists && _heldItem == id){
			depth -= 12;
		}
	
		//hair
		if (_playerExists && _hair == id) {
			depth -= 10;
		}
	}
}