key_down = 0

hsp = 0;
vsp = 0;
hsp_frac = 0;
vsp_frac = 0;


hsp_acc = 1;
hsp_fric_ground = 0.50;
hsp_fric_air = 0.15;
hsp_walk = 4;
hsp_wup = 4;

vsp_jump = -8;
vsp_max = 10;
vsp_wup = -5;
vsp_max_wall = 4;

onground = false

grv = 0.3;

jumpbuffer = 0;

onwall = 0;

dust = 0;

grv_wall = 0.1;

walljumpdelay = 0;
walljumpdelay_max = 20;


hp = 3
max_hp = 3

st = 100
max_st = 100

flash = 0



pickupcooldown = 0;

walljumpdelay_fix = 0



//checkpoints 

if (global.checkpointR == room && !global.checkpoint == 0)
{
	x = global.checkpointX;
	y = global.checkpointY;
}



global.hasGun = false
placeholder = global.hasGun

global.hasShotgun = false
placeholder1 = global.hasShotgun

global.hasRifle = false
placeholder2 = global.hasRifle


hasRifle = false
hasGun = false
hasShotgun = false

inv = 1

invcooldown = 20


/*
guncheck = Scritemcheck(0)
if (guncheck == 1)
{
	hasgun = true
}
*/
