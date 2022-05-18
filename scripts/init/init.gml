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
		CARROT,
		SUNFLOWER,
		POTATO,
		
		STONE,
		IRON,
		
		POTION,
		SYRUP,
		BLOCK_WOOD,
		BLOCK_IRON,
		
		WOOD_FENCE,
		STONE_FENCE,
		
		HOUSE1,
		HOUSE2,
		HOUSE3,
		
		
		STATUE,
		WOODEN_CHEST,
		WOODEN_CHEST_LARGE
		
	}
	
	initItem(ITEM.APPLE, "Apple", sApple, [], undefined, 8);
	initItem(ITEM.ORANGE, "Orange", sOrange, [],undefined, 8);
	initItem(ITEM.WOOD, "Wood", sWood, []);
	initItem(ITEM.CARROT, "Carrot", sCarrot, []);
	initItem(ITEM.SUNFLOWER, "Sunflower", sSunflower, [], undefined,6);
	initItem(ITEM.POTATO, "Potato", sPotato, [], undefined,6);

	
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
	
	initItem(ITEM.STATUE, "Statue", sStatueOld, [
		[ITEM.STONE, 3]
	], oPlaceableStatue);
	
	initItem(ITEM.WOOD_FENCE, "Wood Fence", sFenceW, [
		[ITEM.WOOD, 1]
	], oWoodFence);
	
	initItem(ITEM.STONE_FENCE, "Stone Fence", sFenceS, [
		[ITEM.STONE, 1]
	], oStoneFence);
	
	initItem(ITEM.HOUSE1, "Small House", sHouse1Icon, [
		[ITEM.WOOD, 3]
	], oHouse1);
	
	initItem(ITEM.HOUSE2, "Medium House", sHouse2Icon, [
		[ITEM.WOOD, 3],
		[ITEM.STONE, 2]
	], oHouse2);
	
	initItem(ITEM.HOUSE3, "Large House", sHouse3Icon, [
		[ITEM.WOOD, 2],
		[ITEM.STONE, 3],
		[ITEM.IRON,3]
	], oHouse3);
	
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
		
		"BLOCKS",
		ITEM.BLOCK_WOOD,
		ITEM.BLOCK_IRON,
		
		"BUILDINGS",
		ITEM.HOUSE1,
		ITEM.HOUSE2,
		ITEM.HOUSE3,
		
		"Fences",
		ITEM.WOOD_FENCE,
		ITEM.STONE_FENCE,
		
		"Statues",
		ITEM.STATUE,
		
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