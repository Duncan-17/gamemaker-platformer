var draw_x = 8;
var draw_y = 8;

draw_set_font(fScore);

var _w = display_get_gui_width();

// draw coin sprite



//draw coin text
draw_set_color(make_color_rgb(255,225,0));
draw_set_halign(fa_right);
draw_text(1300, 75, global.coins);
draw_set_halign(fa_left);


//gun ammo draw
if (global.hasGun) {
draw_set_color(c_gray)
draw_set_halign(fa_right);
draw_text(1000, 75, global.Gunammo);
draw_set_halign(fa_left);
}

if (global.hasShotgun) {
draw_set_color(c_red)
draw_set_halign(fa_right);
draw_text(1000, 75, global.Shotgunammo);
draw_set_halign(fa_left);
}

if (global.hasBouncegun) {
draw_set_color(c_blue)
draw_set_halign(fa_right);
draw_text(1000, 75, global.Bouncegunammo);
draw_set_halign(fa_left);
}






