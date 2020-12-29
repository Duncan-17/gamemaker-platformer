x = oPlayer.x;
y = oPlayer.y;

//aiming
image_angle = point_direction(x,y,mouse_x,mouse_y)

firingdelay = firingdelay - 1;
recoil = max(0,recoil - 1);

if (mouse_check_button(mb_left))  && (firingdelay < 0) && (global.Shotgunammo > 0)
{
	global.Shotgunammo = global.Shotgunammo -1
	recoil = 4;
	firingdelay = 30;
	ScreenShake(2,5)
	audio_play_sound(snShot,5,false) ////3 is if loop
	repeat(12){
					with (instance_create_layer(x,y,"Bullets",oShell))
					{
						speed = 12;
						direction = other.image_angle + random_range (-6,6);
						image_angle = direction;	
					}
				}
}

x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle);

if (image_angle > 90) && (image_angle <270)
{
	image_yscale = -1;
}
else
{
	image_yscale = 1;
}

