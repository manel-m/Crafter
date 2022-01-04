/// @description 
camera_destroy(view_camera);
ds_list_destroy(invList);

//Remove pause surface
if (surface_exists(pauseSurf)){
	surface_free(pauseSurf);
}