switch (state)
{
case  Lazer_state.charging:
    break;
case  Lazer_state.damaging:
    break;
}

if state = Lazer_state.charging
{
	Scrcharging()
}

if state = Lazer_state.damaging
{
	Scrdeadly()
}

if state = Lazer_state.damaging && place_meeting(x,y,oPlayer)
{
	oPlayer.hp = 0
}

	