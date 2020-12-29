image_angle += 1;

if (place_meeting(x,y,oPlayer))
{
	global.checkpoint = id;
	global.checkpointX = x;
	global.checkpointY = y;
	global.checkpointR = room;
}

if (global.checkpointR == room)
{
	if (global.checkpoint ==id) image_index = 1; else image_index = 0;
}

if (place_meeting(x,y,oPlayer))
{
	global.scoresave = global.coins 
	global.Shotgunammosave = global.Shotgunammo 
	global.Shotgunammosave = global.Gunammo 
	global.Bouncegunammosave = global.Bouncegunammo 
}