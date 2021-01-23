

	if (surface_exists(global.surface_blood_background)) {
		
		
		//where draw
		surface_set_target(global.surface_blood_background)
		
		//what draw
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle,c_white,1)

		//reset
		surface_reset_target();
		
		
	}
	
	if (!surface_exists(global.surface_blood_background)) {
		
		global.surface_blood_background = surface_create(room_width, room_height);
	}