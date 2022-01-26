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
		ANGRY_STATUE,
		WOODEN_CHEST,
		WOODEN_CHEST_LARGE
		
		
	}
	
	//global.itemSprite[ITEM.APPLE] = sApple;
	//global.itemSprite[ITEM.ORANGE] = sOrange;
	//global.itemSprite[ITEM.WOOD] = sWood;
	
	initItem(ITEM.APPLE, "Apple", sApple, [], undefined, 4);
	initItem(ITEM.ORANGE, "Orange", sOrange, [],undefined, 2);
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
	], oAngryStatue);
	
	initItem(ITEM.WOODEN_CHEST, "Wooden Chest",sWoodenChest, [
		[ITEM.WOOD, 3]
	], oWoodenChest);
	
	initItem(ITEM.WOODEN_CHEST_LARGE, "Large Wooden Chest",sWoodenChestLarge, [
		[ITEM.WOOD, 6]
	], oWoodenChestLarge);


	
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
		ITEM.ANGRY_STATUE,
		
		"Chests",
		ITEM.WOODEN_CHEST,
		ITEM.WOODEN_CHEST_LARGE
	
	];
}

function initItem (_item, _name, _sprite, _recipe, _placeable, _stackSize ){
	
	global.itemName[_item] = _name;
	global.itemSprite[_item] = _sprite;
	global.itemRecipe[_item] = _recipe;
	
	global.itemPlaceable[_item] = (_placeable != undefined ? _placeable : noone);
	global.itemStackSize[_item] = (_stackSize != undefined ? _stackSize : 64);


}