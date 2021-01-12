

vsp=vsp + grv;

// dont walk off edges
if (grounded) && (afraidofheights) && (!place_meeting(x+hsp*20,y+1,oWall))
{
	hsp = -hsp;
}



//Horizontal Collision
if (place_meeting(x+hsp*20,y,oWall))
{
    while (!place_meeting(x+sign(hsp),y,oWall))
	{
	    x = x + sign(hsp);
	}
	
    hsp = -hsp;
}
////i did this
x = x + hsp

//Vertical Collision
if (place_meeting(x,y+vsp,oWall))
{
    while (!place_meeting(x,y+sign(vsp),oWall))
	{
	    y = y + sign(vsp);
	}
    vsp = 0
}
y = y + vsp;

//Animation
if (!place_meeting(x,y+1,oWall))
{
	grounded = false;
   sprite_index = sEnemyAblack; 
   image_speed = 0; 
   if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	grounded = true;
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sEnemyblack;
	}
	else
    {
		sprite_index = sEnemyRblack;
	}
}

if (hsp !=0) image_xscale = sign(hsp) * size;
image_yscale = size;

