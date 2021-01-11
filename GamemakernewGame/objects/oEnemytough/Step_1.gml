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
	
	instance_create_layer(x,y-10,"enemy",oEnemyexposed)
	instance_destroy()
		
}

