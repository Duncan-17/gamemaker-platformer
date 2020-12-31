// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Scritempickup(argument0){
	
	for (i = 0; i < maxitems; i += 1)
	{
		if (global.inventory[i] == -1) //if slot is empty
		{
			global.inventory[i] = argument0;
			return(1);
		}
		
	}

}
return(0);





//addpotion = Scritempickup(2)
//if (addpotion == 1)
//{
//	show message saying inventory full
//}