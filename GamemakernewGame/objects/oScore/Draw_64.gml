var draw_x = 8;
var draw_y = 8;

draw_set_font(fScore);

var _w = display_get_gui_width();

// draw coin sprite



//draw coin text
if global.coins >= 1{
draw_set_color(make_color_rgb(255,225,0));
draw_set_halign(fa_right);
draw_text(1300, 75, global.coins);
draw_set_halign(fa_left);
}

//gun ammo draw
// has gun {
//draw_set_color(c_gray)
//draw_set_halign(fa_right);
//draw_text(1000, 75, global.Gunammo);
//draw_set_halign(fa_left);
//}







