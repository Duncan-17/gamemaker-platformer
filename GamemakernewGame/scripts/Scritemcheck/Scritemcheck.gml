// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Scritemcheck(argument0){
	for (i = 0; i < maxitems; i += 1)
	{
		if (global.inventory[i] == argument0) //if slot is empty
		{
			return(1);
		}
		
	}

}
return(0);
