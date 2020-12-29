//Get Player Input





if (hascontrol)
{
key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
key_up = keyboard_check_pressed(vk_up) or keyboard_check(ord("W"));
}
else
{
	key_right = 0;
	key_left = 0;
	key_up = 0;
}
//Calculate Movement
var move = key_right - key_left;

hsp = move * walksp;

vsp=vsp + grv;

canjump -= 1;
if (canjump > 0) && (key_up)
{
	vsp = -7;
	canjump = 0;
}	


if (keyboard_check(vk_space) && (ff > 0))
{
	vsp = -3.5;
	ff = (ff-1)
}	

if ff > 100 {
	ff = 100
}

if (place_meeting(x,y+1,oWall))
{
	ff = ff + .5
}
	
//Horizontal Collision
if (place_meeting(x+hsp,y,oWall))
{
    while (!place_meeting(x+sign(hsp),y,oWall))
	{
	    x = x + sign(hsp);
	}
    hsp = 0;
}
x = x + hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,oWall))
{
    while (!place_meeting(x,y+sign(vsp),oWall))
	{
	    y = y + sign(vsp);
	}
    vsp = 0;
}
y = y + vsp;

 //Animation
if (!place_meeting(x,y+1,oWall))
{
   sprite_index = sPlayerA; 
   image_speed = 0; 
   if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	canjump = 10;
	if (sprite_index == sPlayerA) 
	{
		audio_play_sound(snLanding,4,false);
		repeat(5)
		{
			with (instance_create_layer(x,bbox_bottom,"Bullets",oDust))
			{
				vsp = 0;
			}
		}
		
		
	}
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sPlayer;
	}
	else
    {
		sprite_index = sPlayerR;
	}
}

if (hsp !=0) image_xscale = sign(hsp);



if (mouse_check_button(mb_right) && (st > 0)) 
{
	game_set_speed(25,gamespeed_fps);
	st = (st -1.5)
}

else 
{
	game_set_speed(60,gamespeed_fps);
}

if (!mouse_check_button(mb_right))
{
	st = (st + .25)
}



if (st > 100) {
	st = 100
}

if (hp <= 0) KillPlayer()



	

