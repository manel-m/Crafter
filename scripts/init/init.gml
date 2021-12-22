// run some code before the game starts
gml_pragma("global", "init()");

function init(){
	
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