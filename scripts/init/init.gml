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
		SYRUP,
		BLOCK_WOOD,
		BLOCK_IRON
		
	}
	
	//global.itemSprite[ITEM.APPLE] = sApple;
	//global.itemSprite[ITEM.ORANGE] = sOrange;
	//global.itemSprite[ITEM.WOOD] = sWood;
	
	initItem(ITEM.APPLE, "Apple", sApple, []);
	initItem(ITEM.ORANGE, "Orange", sOrange, []);
	initItem(ITEM.WOOD, "Wood", sWood, []);

	
	//global.itemSprite[ITEM.STONE] = sStone;
	//global.itemSprite[ITEM.IRON] = sIron;
	initItem(ITEM.STONE, "Stone", sStone, []);
	initItem(ITEM.IRON, "Iron", sIron, []);
	
	
	initItem(ITEM.POTION, "Potion", sPotion, [
		[ITEM.APPLE, 4]
	]);
	
	initItem(ITEM.SYRUP, "Syrup", sSyrup, [
		[ITEM.ORANGE, 4],
		[ITEM.APPLE, 2 ]
	]);
	initItem(ITEM.BLOCK_WOOD,"Wood Block", sBlock_Wood, [
		[ITEM.WOOD, 5]
	]);
	initItem(ITEM.BLOCK_IRON, "Iron Block", sBlock_Iron, [
		[ITEM.IRON, 4]
	]);


	
	//Inventory
	#macro INV_SIZE 12
	
	//Crafting menu
	global.craftingMenu = [
		"CRAFTING",
		"Stats",
		ITEM.POTION,
		ITEM.SYRUP,
		
		"BUILDING",
		ITEM.BLOCK_WOOD,
		ITEM.BLOCK_IRON,
		
	
	
	];
}

function initItem (item, name, sprite, recipe){
	
	var _item = item;
	global.itemName[_item] = name;
	global.itemSprite[_item] = sprite;
	global.itemRecipe[_item] = recipe;


}