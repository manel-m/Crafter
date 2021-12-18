// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function init(){
	// run some code before the game starts
	gml_pragma("global", "init()");
	
	//Items
	
	enum ITEM {
		APPLE,
		ORANGE,
		WOOD,
		
		STONE,
		IRON
	}
	
	global.itemSprite[ITEM.APPLE] = sApple;
	global.itemSprite[ITEM.ORANGE] = sOrange;
	global.itemSprite[ITEM.WOOD] = sWood;
	
	global.itemSprite[ITEM.STONE] = sStone;
	global.itemSprite[ITEM.IRON] = sIron;


}