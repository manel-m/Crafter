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
	
	//Swaying
	sway_max = 0;
	sway_dx = 0;
	sway_speed = 0;
	sway_right = true;
	
}

function Juice_Step () {
	xscale = lerp(xscale, xscaleTarget, scalingSpeed);
	yscale = lerp(yscale, yscaleTarget, scalingSpeed);
	
	if (flashAlpha > 0) {
		flashAlpha -= 0.1;
	}
	
	if (sway_max > 0) {
		if (sway_right){
			sway_dx += sway_speed;
			if (sway_dx >= sway_max) sway_right = false
		} else {
			sway_dx -= sway_speed;
			if (sway_dx <= -sway_max) sway_right = true;
		}	
	}
}

function Juice_Draw (_x, _y) {

	//Draw flash
	if (flashAlpha >0) {
		draw_sprite_ext(sprite_index, image_index, _x, _y, image_xscale * xscale, image_yscale * yscale,
		image_angle, image_blend, image_alpha);
		
		shader_set(shFlash);
		draw_sprite_ext(sprite_index, image_index, _x, _y, image_xscale * xscale, image_yscale * yscale,
			image_angle, flashColor, flashAlpha);
		shader_reset();
	} else if (sway_max > 0){
		
		var _left = _x- sprite_xoffset;
		var _top = _y-sprite_yoffset;
		var _width = sprite_width;

		draw_sprite_pos(sprite_index, image_index,
					_left + sway_dx , _top,
					_left + _width + sway_dx, _top,
					_left + _width , _top + sprite_height,
					_left, _top + sprite_height, 1)	
	
	} else {
		draw_sprite_ext(sprite_index, image_index, _x, _y, image_xscale * xscale, image_yscale * yscale,
		image_angle, image_blend, image_alpha);
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

function Juice_ApplySway (_swayMax, _swaySpeed) {
	sway_max = _swayMax;
	sway_speed = _swaySpeed;
	sway_dx = random_range(-sway_max,sway_max);
}