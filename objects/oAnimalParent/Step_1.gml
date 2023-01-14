/// @description 

//Roaming 
if (!following) {
	moveSpeed = moveSpeedRoam;
	
	//Set roam position
	if (roamTime == 0) {
		var _len = random(roamDistance);
		var _dir = random(360);
		
		targetX = xstart + lengthdir_x(_len, _dir);
		targetY = ystart + lengthdir_y(_len, _dir);
		
		roamTime = 120;
	} else roamTime --;
	
	//Set Follow
	
	if (instance_exists(oPlayer) && distance_to_object(oPlayer) < followDistance ) {
		following = true;
	}

}  else {
	// following 
	moveSpeed = moveSpeedFollow;
	
	//Set target
	if (instance_exists(oPlayer) && distance_to_object(oPlayer) < followDistance * 1.3) {
		targetX = oPlayer.x;
		targetY = oPlayer.y
	} else {
	 // Set roaming
	 following = false;
	}
}

//Move 
if (point_distance(x, y, targetX, targetY) > moveSpeed) {
	inputX = clamp(targetX - x, -1, 1);
	inputY = clamp(targetY - y, -1, 1);
} else {
	//Stop
	inputX = 0;
	inputY = 0;
} 

//Enemy collision in follow
if (following) {
	var _newX = x + inputX * moveSpeed;
	var _newY = y + inputY * moveSpeed;
	
	if (place_meeting(_newX, _newY, oAnimalParent)) {
		inputX = 0;
		inputY = 0;
	}
}




