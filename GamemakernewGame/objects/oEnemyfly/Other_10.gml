/// @description WANDER
spd = 2
delay -= 1

if distance_to_object(oPlayer) <= 300 
{
	states = CHASE
}

doneonce = false

