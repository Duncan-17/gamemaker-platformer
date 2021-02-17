


event_user = (state);

if distance_to_object(oPlayer) < 300 {
	event_user(1)
}
	






scrMove();
scrMovepush();
if !place_meeting(x,y, oEnemyfly) {
	hsppush = lerp(hsppush , 0 , .1);
	vsppush = lerp(vsppush , 0 , .1);
}
