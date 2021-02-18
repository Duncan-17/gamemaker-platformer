/// @description DIVE


if instance_exists(oPlayer){
var dir = point_direction(x, y,oPlayer.x , oPlayer.y);
hsp = lengthdir_x(spd, dir);
vsp = lengthdir_y(spd, dir);
}

charge = 100

hsp = 0
vsp = 0




divet -= 1


if divet <= 0
{
	states = ATTACK
}
