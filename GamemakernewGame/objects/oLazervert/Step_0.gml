switch (state)
{
case  Lazervert_state.chargingvert:
    break;
case  Lazervert_state.damagingvert:
    break;
}

if state = Lazervert_state.chargingvert
{
	Scrchargingvert()
}

if state = Lazervert_state.damagingvert
{
	Scrdeadlyvert()
}

if state = Lazervert_state.damagingvert && place_meeting(x,y,oPlayer)
{
	oPlayer.hp = 0
}

	