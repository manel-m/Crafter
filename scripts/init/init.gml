// run some code before the game starts
gml_pragma("global", "init()");

function init(){
	
	//Items
	enum ITEM {
		APPLE,
		ORANGE,
		WOOD,
		
		STONE,
		IRON,
		
		POTION,
		SYROP,
		BLOCK_WOOD,
		BLOCK_IRON
		
	}
	
	global.itemSprite[ITEM.APPLE] = sApple;
	global.itemSprite[ITEM.ORANGE] = sOrange;
	global.itemSprite[ITEM.WOOD] = sWood;
	
	global.itemSprite[ITEM.STONE] = sStone;
	global.itemSprite[ITEM.IRON] = sIron;
	
	//Inventory
	#macro INV_SIZE 12
	
	//Crafting menu
	global.craftingMenu = [
		"CRAFTING",
		"Stats",
		ITEM.POTION,
		ITEM.SYROP,
		
		"BUILDING",
		ITEM.BLOCK_WOOD,
		ITEM.BLOCK_IRON,
		
		"TESt",
		-1,
		-1
	
	];


}