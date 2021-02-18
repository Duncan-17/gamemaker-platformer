/// @description DIVE

sprite_index = sEnemyflypoint

if instance_exists(oPlayer){
var dir = point_direction(x, y,oPlayer.x , oPlayer.y);
hsp = lengthdir_x(0, dir);
vsp = lengthdir_y(0, dir);
}

image_angle = point_direction(x, y,oPlayer.x , oPlayer.y);