/// @description 

//Draw back
draw_set_color(hover? c_gray : c_black);
draw_set_alpha(0.4);

draw_rectangle(x, y, x+ width, y+ height, 0);

draw_set_alpha(1);
draw_set_color(c_white);

//draw outline 
draw_rectangle(x, y,  x+ width+1, y+ height+1, 1 );
