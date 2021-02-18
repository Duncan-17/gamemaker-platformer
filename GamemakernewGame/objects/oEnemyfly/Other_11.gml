/// @description CHASE


if instance_exists(oPlayer){
var dir = point_direction(x, y,oPlayer.x , oPlayer.y);
hsp = lengthdir_x(spd, dir);
vsp = lengthdir_y(spd, dir);
}



if distance_to_object(oPlayer) <= 80 
{
	states = CHARGE
	windup = 50
}



