// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Juice_Create(){
	xscale = 1;
	yscale = 1;
	xscaleTarget = 1;
	yscaleTarget = 1;
	
	scalingSpeed = 0.1;
	
	//Flashing
	flashAlpha =0;
	flashColor = c_white;
}

function Juice_Step () {
	xscale = lerp(xscale, xscaleTarget, scalingSpeed);
	yscale = lerp(yscale, yscaleTarget, scalingSpeed);
	
	if (flashAlpha > 0) {
		flashAlpha -= 0.1;
	}
}

function Juice_Draw (_x, _y) {
	draw_sprite_ext(sprite_index, image_index, _x, _y, image_xscale * xscale, image_yscale * yscale,
		image_angle, image_blend, image_alpha);
	
	//Draw flash
	if (flashAlpha >0) {
		shader_set(shFlash);
		draw_sprite_ext(sprite_index, image_index, _x, _y, image_xscale * xscale, image_yscale * yscale,
			image_angle, flashColor, flashAlpha);
		shader_reset();
	
	}
}


function Juice_ApplyScaling (_xscale, _yscale, _xscaleTarget, _yscaleTarget ) {
	xscale = _xscale;
	yscale = _yscale;
	xscaleTarget = _xscaleTarget;
	yscaleTarget = _yscaleTarget;
}

function Juice_ApplyFlash (_flashColor, _flashAlpha) {
	flashColor = _flashColor;
	flashAlpha = _flashAlpha;
}