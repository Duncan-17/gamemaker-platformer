// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Scrchargingvert(){
	sprite_index = sLazerchargingvert
	image_speed = 1
	
	
	
	if timercharging >= 100
	{
		timercharging = 100
	}
	timercharging = timercharging - 1
	
	if (timercharging <= 0)
	{
		state = Lazer_state.damaging
		damagingcharging = 50
	}

}