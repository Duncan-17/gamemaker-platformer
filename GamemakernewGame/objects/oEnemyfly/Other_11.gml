/// @description CHASE

if instance_exists(oPlayer){
var dir = point_direction(x, y,oPlayer.x , oPlayer.y);
hsp = lengthdir_x(spd, dir);
vsp = lengthdir_y(spd, dir);
}



scrMove();
scrMovepush();
if !place_meeting(x,y, oEnemyfly) {
	hsppush = lerp(hsppush , 0 , .1);
	vsppush = lerp(vsppush , 0 , .1);
}

windup = 30