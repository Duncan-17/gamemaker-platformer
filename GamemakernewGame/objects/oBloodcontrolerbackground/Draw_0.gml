if (!surface_exists(global.surface_blood_background)){
	global.surface_blood_background = surface_create(room_width,room_height)
}
else {
	draw_surface(global.surface_blood_background,0, 0);
}