/// @description WANDER

sprite_index = sEnemyfly

spd = 2
delay -= 1

if distance_to_object(oPlayer) <= 3000 
{
	states = CHASE
}

doneonce = false

