if (instance_exists(oSpawner))
{
	with (oSpawner)
	{
		//if (triggered)
		{
			//remaining[current_wave]--;
		}
	}
}


if (hp <= 0) 
{
	
	with(instance_create_layer(x,y,layer,oDead))
	{
		direction = other.hitfrom;
		hsp = lengthdir_x(3,direction);
		vsp = lengthdir_y(3,direction)-2;
		if (sign(hsp) !=0) image_xscale = sign(hsp) * other.size;
		image_yscale = other.size;
		ScreenShake(4,12);
	}
	
	with (mygun) instance_destroy();
	instance_destroy();
	{
		ScrBloodRed();
		ScrBloodeffect();
	}
}

