// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrMove(){
	
	if (place_meeting(round(x+hsp),round(y),oWall)) {
    while (!place_meeting(round(x+sign(hsp)),round(y),oWall))
	{
	    x += sign(hsp);
	}
	
    hsp = 0
}
x+= hsp


//Vertical Collision
if (place_meeting(round(x),round(y+vsp),oWall)) {
    while (!place_meeting(round(x),round(y+sign(vsp)),oWall))
	{
	    y += sign(vsp);
	}
	vsp = 0
}
y += vsp


}