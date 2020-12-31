
//Get Player Input
key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
key_up = keyboard_check(vk_up) or keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) or keyboard_check(ord("S"));

//calc horizontal movement
walljumpdelay = max(walljumpdelay-1,0);
if (walljumpdelay == 0)
{
	var dir = key_right - key_left;
	hsp += dir * hsp_acc;
	if (dir == 0)
	{
		var hsp_fric_final = hsp_fric_ground;
		if (!onground) hsp_fric_final = hsp_fric_air;
		hsp = Approach(hsp,0,hsp_fric_final);
	}
	hsp = clamp(hsp,-hsp_walk,hsp_walk);
}

//wall jump
if (onwall !=0) && (onground = false) && (key_up) && (walljumpdelay_fix = 0)
{
	walljumpdelay = walljumpdelay_max;
	hsp = -onwall * hsp_wup;
	vsp = vsp_wup;
	
	hsp_frac = 0;
	vsp_frac = 0;
}

if (onground) {walljumpdelay_fix = 10} 
walljumpdelay_fix = walljumpdelay_fix - 1
if (walljumpdelay_fix < 0) { walljumpdelay_fix = 0}


//calc vertical movement
var grv_final = grv;
var vsp_max_final = vsp_max;
if (onwall != 0) && (vsp >0)
{
	grv_final = grv_wall;
	vsp_max_final = vsp_max_wall;
}
vsp += grv_final;
vsp = clamp(vsp,-vsp_max_final,vsp_max_final)

//ground jump
if(jumpbuffer > 0)
{
	jumpbuffer--;
	if (key_up)
	{
		jumpbuffer = 0;
		vsp = vsp_jump;
		vsp_frac = 0;
	}
}
vsp = clamp(vsp,-vsp_max,vsp_max)

//dump fractions and final intiger speed
hsp += hsp_frac;
vsp += vsp_frac;
hsp_frac = frac(hsp);
vsp_frac = frac(vsp);
hsp -= hsp_frac;
vsp -= vsp_frac;

//horizontal Collision
if (place_meeting(x+hsp,y,oWall))// && (!place_meeting(x+hsp,y,oDeath)))
{
	var onepixel = sign(hsp);
	while (!place_meeting(x+onepixel,y,oWall)) x += onepixel;
	hsp = 0;
	hsp_frac = 0;
}
//horizontal move
x += hsp;

//vertical collision
if (place_meeting(x,y+vsp,oWall))// && (!place_meeting(x,y+vsp,oDeath)))
{
	var onepixel = sign(vsp);
	while (!place_meeting(x,y+onepixel,oWall)) y += onepixel;
	vsp = 0;
	vsp_frac = 0;
}
//vertical move
y += vsp;

//bouncepad vertical
if (place_meeting(x,y+vsp,oBouncepad))
{
	var onepixel = sign(vsp);
	while (!place_meeting(x,y+onepixel,oBouncepad)) y += onepixel;
	vsp = vsp_jump*2;
	vsp_frac = 0;
}
//calculate current status
onground = place_meeting(x,y+1,oWall);
onwall = place_meeting(x+1,y,oWall) - place_meeting(x-1,y,oWall);
if (onground) jumpbuffer = 6;

//adjust sprites
image_speed = 1;
if (hsp !=0) image_xscale = sign(hsp);
if (!onground)
{
	if (onwall != 0) 
	{
		sprite_index = sPlayerwall
		image_xscale = onwall;
		
		var side = bbox_left;
		if (onwall == 1) side = bbox_right;
		dust++;
		if ((dust > 2) && (vsp > 0)) with (instance_create_layer(side,bbox_top,"Blood",oDustwall))
		{
			other.dust = 0;
			hspeed = -other.onwall*0.5;
		}
	}
	else
	{
		dust = 0;
		sprite_index = sPlayerA;
		image_index = 0;
		image_index = (vsp > 0);
	}
}
else
{
	if (hsp != 0) sprite_index = sPlayerR; else sprite_index = sPlayer;
}
	


 

//extra 
if (mouse_check_button(mb_right) && (st > 0)) 
{
	game_set_speed(25,gamespeed_fps);
	st = (st -1.5)
}

else 
{
	game_set_speed(60,gamespeed_fps);
}

if (!mouse_check_button(mb_right))
{
	st = (st + .25)
}



if (st > 100) {
	st = 100
}

if (hp <= 0) KillPlayer()

// gun pickup
pickupcooldown = pickupcooldown - 1
if (pickupcooldown < 0){
	pickupcooldown = 0
}

//dynamic check
Guncheck = Scritemcheck(0)
if (Guncheck == 1)
{
	hasGun = true
}
//oGun
if (place_meeting(x,y,oPickupGun) && (key_down) && pickupcooldown <= 0) && (global.coins >= 50) && hasGun = false
{
	global.coins = global.coins - 50
	Scritempickup(0)
	pickupcooldown = pickupcooldown + 50
}


//oShotgun
if (place_meeting(x,y,oShotgunpickup) && (key_down) && pickupcooldown <= 0) && (global.coins >= 100) && (Scritemcheck(0) != 1)
{
global.Shotgunammo = global.Shotgunammo + 20
global.coins = global.coins - 100
pickupcooldown = pickupcooldown + 50
if (instance_exists(oShotgun))
{
	instance_create_layer(x+15,y,"player",oShotgunloot)
	instance_destroy(oShotgun)
}
if (instance_exists(oBouncegun))
{
	instance_create_layer(x+15,y,"player",oBouncegunloot)
	instance_destroy(oBouncegun)
}
if (instance_exists(oGun))
{
	instance_destroy(oGun)
	instance_create_layer(x+15,y,"player",oGunloot)
}
instance_create_layer(x,y,"Gun",oShotgun)
}


//oBouncegun
if (place_meeting(x,y,oBouncegunpickup) && (key_down) && pickupcooldown <= 0) && (global.coins >= 100)
{
global.Bouncegunammo = global.Bouncegunammo + 20
global.coins = global.coins - 100
pickupcooldown = pickupcooldown + 50
if (instance_exists(oShotgun))
{
	instance_create_layer(x+15,y,"player",oShotgunloot)
	instance_destroy(oShotgun)
}
if (instance_exists(oBouncegun))
{
	instance_create_layer(x+15,y,"player",oBouncegunloot)
	instance_destroy(oBouncegun)
}
if (instance_exists(oGun))
{
	instance_destroy(oGun)
	instance_create_layer(x+15,y,"player",oGunloot)
}
instance_create_layer(x,y,"Gun",oBouncegun)
}


//Vendingmachine
if (place_meeting(x,y,oAmmovending) && (key_down) && pickupcooldown <= 0) && (global.coins >= 50)
{
global.coins = global.coins - 50
pickupcooldown = pickupcooldown + 50
if (instance_exists(oShotgun))
{
	global.Shotgunammo = global.Shotgunammo + 50
}
if (instance_exists(oBouncegun))
{
	global.Bouncegunammo = global.Bouncegunammo + 50
}
if (instance_exists(oGun))
{
	global.Gunammo = global.Gunammo + 50
}

}



