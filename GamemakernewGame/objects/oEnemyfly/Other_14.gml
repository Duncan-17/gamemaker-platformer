/// @description ATTACK


spd = 7
charge -= 1



if doneonce = false {
if instance_exists(oPlayer){
var dir = point_direction(x, y,oPlayer.x , oPlayer.y);
hsp = lengthdir_x(spd, dir);
vsp = lengthdir_y(spd, dir);
}
doneonce = true
}



if charge <= 0
{
	states = WANDER
}



if (place_meeting(x+hsp,y,oWall) && !place_meeting(x+hsp,y,oWalloneway))
{
	spd = 0
}


//Vertical Collision
if (place_meeting(x,y+vsp,oWall) && !place_meeting(x,y+vsp,oWalloneway))
{
	
	spd = 0
}