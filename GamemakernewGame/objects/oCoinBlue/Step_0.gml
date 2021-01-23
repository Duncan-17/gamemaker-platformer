if instance_exists(oPlayer)
{

if (!collision_line(x,y,oPlayer.x,oPlayer.y, oWall,false,true) && (innitialpause <= 0) && distance_to_object(oPlayer) <= 30)
{
	triggered = true
}


speed = speed - 1
if (speed <= 0) && (triggered = false)
{
	speed = 0
}

if (triggered = true)
{
	direction = point_direction(x,y,oPlayer.x,oPlayer.y)
	speed = 1
	
}


innitialpause -= 1

if (place_meeting(x, y, oPlayer) && !collected){
	global.coins ++;
	collected = true;
}

//collected
if (collected){
	//sprite_index = sCoineffect;
	
	if (floor(image_index) >= image_number - 1){
		instance_destroy();
	}
}



}
