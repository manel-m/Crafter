// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getAttacked( _attacker){
	hp --; 
 
 //knockback
	var _dir = point_direction(_attacker.x, _attacker.y, x, y);
			
	boostX = lengthdir_x(knockbackSpeed, _dir);
	boostY = lengthdir_y(knockbackSpeed, _dir);
}