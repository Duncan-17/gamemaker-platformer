

hsp = irandom_range(1,-1)
if hsp = 0{
	hsp = 1
}



if (hasweapon)
{
	mygun = instance_create_layer(x,y,"Gun",oEGun)
	with (mygun)
	{
		owner = other.id
	}
}
else mygun = noone;







