/// @description 
//Draw health bar
if (hp < hpMax){
	//healthbar Y
	var _Y = bbox_bottom + 1;
	
	//Draw healthbar fill
	var _amount = hp / hpMax;
	var _width = bbox_right - bbox_left;
	
	draw_set_color(hpColor);
	draw_rectangle(bbox_left, _Y, bbox_left + _width * _amount, _Y + hpHeight, 0);
	draw_set_color(-1);
	
	//Draw healthbar border
	draw_rectangle(bbox_left, _Y, bbox_right, _Y+ hpHeight, 1);

}