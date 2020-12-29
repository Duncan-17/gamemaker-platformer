hsp = irandom_range(3,-3)
if hsp = 0{
	hsp = 3
}
if hsp > 0{
	hsp = 3
}
if hsp < 0{
	hsp = -3
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