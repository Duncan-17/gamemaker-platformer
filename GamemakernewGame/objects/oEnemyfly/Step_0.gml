event_user(states);

if distance_to_object(oPlayer) < 300
{
	states = CHASE
}

if distance_to_object(oPlayer) < 80 && !collision_line(x,y, oPlayer.x,oPlayer.y,oWall, false, false)
{
	states = CHARGE
}

if windup <= 0 
{
	states = DIVE
	
}



