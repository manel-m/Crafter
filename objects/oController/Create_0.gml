/// @description 
// Resolution
enum RES {
	WIDTH = 260,
	HEIGHT = 260,
	SCALE = 3
}

//cursor_sprite = sCursor;
//window_set_cursor(cr_none);

// Create camera 
//var _camera = camera_create_view(0,0,RES.WIDTH,RES.HEIGHT, 0, oPlayer, -1,-1,RES.WIDTH/2, RES.HEIGHT/2);
var _camera = camera_create_view(30,50,RES.WIDTH,RES.HEIGHT, 0)

//Set up view
view_enabled = true;
view_visible[0] = true;

view_set_camera(0,_camera);

//Inventory
invList = ds_list_create();

//Pause 
pause = false;

pauseSurf= -1;

chestID = noone;
movingArray = -1;

craftingLightBox = noone;

//Crafting menu
cMenuScroll = 0;
cMenuHeight = 0;
	
// add some starting items to the inventory
inv_add(ITEM.WOOD, 8);
inv_add(ITEM.STONE,8);
inv_add(ITEM.IRON,8);



