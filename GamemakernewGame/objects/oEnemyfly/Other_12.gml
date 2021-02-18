/// @description CHARGE

sprite_index = sEnemyflycharge



scrMove();
scrMovepush();
if !place_meeting(x,y, oEnemyfly) {
	hsppush = lerp(hsppush , 0 , .1);
	vsppush = lerp(vsppush , 0 , .1);
}

hsp = 0
vsp = 0

windup = windup -1

