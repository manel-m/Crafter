/// @description 

//Juice
Juice_Step();

// Collision with Player

if (!collected && place_meeting(x,y,oPlayer)){
	//Add to inventory
	var added = inv_add(type,1);
	
	//Collected
	collected = added;
	
	//Juice
	Juice_ApplyScaling(xscale, yscale, 0.5, 1.5);
}

if (collected){
	image_alpha -= 0.05;
	y -= 0.5;
	
	//Destroy
	if (image_alpha <0.1){
		instance_destroy();
	}
}
// Gravity 
if (z < 0){
	zspd += 0.5;
	z += zspd; 
	
	// Ground collision
	if (z >= 0){
		z = 0;
		zspd = 0;
		
		Juice_ApplyScaling(1.4, 0.7, 1, 1);
	}
}