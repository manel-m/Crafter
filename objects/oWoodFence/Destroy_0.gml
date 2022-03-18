/// @description update fence neighbors 

visible = false;
updateFenceIfExist(x + PLACING_GRID_SIZE, y, object_index);
updateFenceIfExist(x - PLACING_GRID_SIZE, y, object_index);
updateFenceIfExist(x, y + PLACING_GRID_SIZE, object_index);
updateFenceIfExist(x, y - PLACING_GRID_SIZE, object_index);
