// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrMovepush(){
	
	if (place_meeting(x+hsppush,y,oWall)){
    while (!place_meeting(x+sign(hsppush),y,oWall))
	{
	    x += sign(hsppush);
	}
	
    hsppush = 0
}
x+= hsppush


//Vertical Collision
if (place_meeting(x,y+vsppush,oWall))
{
    while (!place_meeting(x,y+sign(vsppush),oWall))
	{
	    y += sign(vsppush);
	}
	vsppush = 0
}
y += vsppush
}