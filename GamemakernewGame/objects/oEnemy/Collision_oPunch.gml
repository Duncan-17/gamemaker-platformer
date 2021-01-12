with(instance_change(oEnemyStunned,true))
	{
		direction = other.hitfrom;
		hsp = lengthdir_x(3,direction);
		vsp = lengthdir_y(3,direction)-2;
		if (sign(hsp) !=0) image_xscale = sign(hsp) * other.size;
		image_yscale = other.size;
		ScreenShake(4,12);
	}



