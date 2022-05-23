/// @description 
//Draw Selctor
if (instance_exists(selectorInst)){
	//Run code in selected Instance
	with (selectorInst){
		//Draw selector in all four corners 
		draw_sprite_ext(sSelector, other.selectorFrame, bbox_left, bbox_top, 1,1, 0, -1,1 );
		draw_sprite_ext(sSelector, other.selectorFrame, bbox_right, bbox_top, 1, 1,-90, -1,1 );
		draw_sprite_ext(sSelector, other.selectorFrame, bbox_right, bbox_bottom, 1, 1, 180, -1,1 );
		draw_sprite_ext(sSelector, other.selectorFrame, bbox_left, bbox_bottom, 1, 1, 90, -1,1 );
		
		
		//Draw white box with the pickaxe inside it 
		draw_sprite_ext(sItemdisc, 0 , bbox_right, bbox_bottom + 15 , 1,1,0, c_white, 1 );
		draw_sprite_ext(sPickaxe, 0 , bbox_right-5, bbox_bottom +20 , 1,1,0, c_white, 1 );
		draw_sprite_ext(sCursor, 0 , bbox_right -5, bbox_bottom+ 3 , 0.8,0.8,0, c_white, 1 );



	}
	
	

	//Animation
	selectorFrame +=0.15;
	if (selectorFrame >= selectorFrameNumber) selectorFrame -= selectorFrameNumber;
	
	//Reset selector instance
	selectorInst = noone;
}