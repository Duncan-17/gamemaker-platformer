
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
   sprite_index = sEnemyAcannon; 
   image_speed = 0; 
   if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	grounded = true;
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sEnemycannon;
	}
	else
    {
		sprite_index = sEnemyRcannon;
	}
}

if (hsp !=0) image_xscale = sign(hsp) * size;
image_yscale = size;


shottimer = shottimer -1

if shottimer <=0 {
//audio_play_sound(snShot,5,false) 
shottimer = 50
	with (instance_create_layer(x,y,"Bullets",oEBulletsmall))
	{
		speed = 6;
		direction = 90
		image_angle = direction;	
	}
}