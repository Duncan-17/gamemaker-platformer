x += lengthdir_x(spd,direction);
y += lengthdir_y(spd,direction);

move_bounce_solid(0);  //or bounce cript

if (place_meeting(x,y,pShootable))
{
	with (instance_place(x,y,pShootable))
	{	
		hp--;
		flash = 3;
		hitfrom = other.direction;
	}
	instance_destroy();
}



range = range - 1
if range < 0 instance_destroy();

armed = armed -1