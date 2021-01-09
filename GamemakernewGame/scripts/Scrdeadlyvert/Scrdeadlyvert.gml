// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Scrdeadlyvert(){
	sprite_index = sLazerdeadlyvert
	image_speed = 1

	damagingcharging = damagingcharging - 1
	if (damagingcharging <= 0)
	{
		state = Lazer_state.charging
		timercharging = 100
	}

}