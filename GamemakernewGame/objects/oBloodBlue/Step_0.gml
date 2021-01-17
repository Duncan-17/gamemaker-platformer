image_angle = direction;
image_alpha = alpha;

if (!place_meeting(x,y,oWall) && (!place_meeting(x,y,oCrate))) {
	visible = false;
	if (speed > 0) {
		speed -= slowdown;
		alpha -= 0.01;
	}
	
	if (!surface_exists(global.surface_blood_background)) {
		global.surface_blood_background = surface_create(room_width, room_height);
		
	}
	else {
		surface_set_target(global.surface_blood_background);
		draw_sprite_ext(sBloodBlue, 0, x, y, image_xscale, image_yscale, image_angle, c_white, alpha);
		surface_reset_target();
	}
}
else {
	visible = true;
}

if (alpha <= 0) {
	instance_destroy();
}
		
