/*
inventory iems
0 = gun
1 = shotgun
*/


globalvar showinv; 
showinv = true

globalvar maxitems;
maxitems = 5;

for (i = 0; i < maxitems; i += 1)
{
	global.inventory[i] = -1
}


/*
Scritempickup(0);
Scritempickup(0);
Scritempickup(0);
Scritempickup(0);

Scritemdrop(0)


guncheck = Scritemcheck(0)
if (guncheck == 1)
{
	//we have a swrod
}


// add gun in first 
//global.inventory[0] = 0
*/