/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//Propreties
moveSpeedRoam = 0.5;
moveSpeedFollow = 0.9;

moveSpeed = moveSpeedRoam;

targetX = 0;
targetY = 0;

//Following 
following = false;
followDistance = 80/2;

//Roaming
roamDistance = 64;
roamTime = 0;

//Attack
attackCooldown = 0;
attackRadius = 8;