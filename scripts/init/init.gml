// run some code before the game starts
gml_pragma("global", "init()");

//Placing
#macro PLACING_GRID_SIZE 16

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
		BLOCK_IRON,
		ANGRY_STATUE
		
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
		[ITEM.WOOD, 2]
	], oWoodBlock);
	initItem(ITEM.BLOCK_IRON, "Iron Block", sBlock_Iron, [
		[ITEM.IRON, 4]
	]);
	
	initItem(ITEM.ANGRY_STATUE, "Angry Status", sAngryStatue, [
		[ITEM.STONE, 3]
	], oAngryStatue)


	
	//Inventory
	#macro INV_SIZE 12
	
	//Crafting menu
	global.craftingMenu = [
		"CRAFTING",
		"Stats",
		ITEM.POTION,
		ITEM.SYRUP,
		
		"Buildings",
		ITEM.BLOCK_WOOD,
		ITEM.BLOCK_IRON,
		
		"Statues",
		ITEM.ANGRY_STATUE
	
	];
}

function initItem (item, name, sprite, recipe, placeable ){
	
	var _item = item;
	global.itemName[_item] = name;
	global.itemSprite[_item] = sprite;
	global.itemRecipe[_item] = recipe;
	
	global.itemPlaceable[_item] = (argument_count > 4 ? argument[4] : noone);


}