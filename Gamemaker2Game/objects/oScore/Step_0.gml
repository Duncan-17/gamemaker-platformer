if instance_exists(oGun) 
{
	global.hasGun = true
	global.hasShotgun = false
	global.hasBouncegun = false
	global.hasGunLazer = false
}

if instance_exists(oShotgun) 
{
	global.hasGun = false
	global.hasShotgun = true
	global.hasBouncegun = false
	global.hasGunLazer = false
}

if instance_exists(oBouncegun) 
{
	global.hasGun = false
	global.hasShotgun = false
	global.hasBouncegun = true
	global.hasGunLazer = false
}

if instance_exists(oGunLazer) 
{
	global.hasGun = false
	global.hasShotgun = false
	global.hasBouncegun = false
	global.hasGunLazer = true
}
