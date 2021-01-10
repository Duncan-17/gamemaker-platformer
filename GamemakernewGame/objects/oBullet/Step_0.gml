x += lengthdir_x(spd,direction);
y += lengthdir_y(spd,direction);

lifelength = lifelength - 1

if (lifelength <= 0) 
{
instance_destroy()
}

if (place_meeting(x,y,pShootable))
{
	with (instance_place(x,y,pShootable))
	{	
		hp = hp - .5;
		flash = 3;
		hitfrom = other.direction;
	}
	instance_destroy();
}


if (place_meeting(x,y,pShootablewall))
{
	with (instance_place(x,y,pShootablewall))
	{	
		hp--;
		flash = 3;
		hitfrom = other.direction;
	}
	instance_destroy();
}


if (place_meeting(x,y,oWall)) 
{
	while (place_meeting(x,y,oWall))
	{
		x -= lengthdir_x(1,direction);
		y -= lengthdir_y(1,direction);
	}
	spd = 0;
	instance_change(oHitSpark,true);
	
}