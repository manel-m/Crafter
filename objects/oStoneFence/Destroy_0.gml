/// @description update fence neighbors 

visible = false;
updateFenceIfExist(x + PLACING_GRID_SIZE, y);
updateFenceIfExist(x - PLACING_GRID_SIZE, y);
updateFenceIfExist(x, y + PLACING_GRID_SIZE);
updateFenceIfExist(x, y - PLACING_GRID_SIZE);
