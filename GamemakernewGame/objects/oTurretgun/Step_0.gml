if instance_exists(oPlayer){

if (top = true )&&(oPlayer.y >y){

image_angle = point_direction(x,y,oPlayer.x , oPlayer.y);}


if (bottom = true && oPlayer.y <y){

image_angle = point_direction(x,y,oPlayer.x , oPlayer.y);}


if (right = true && oPlayer.x <x){

image_angle = point_direction(x,y,oPlayer.x , oPlayer.y);}

if (left = true && oPlayer.x >x){

image_angle = point_direction(x,y,oPlayer.x , oPlayer.y);}

if collision_line(x,y,oPlayer.x,oPlayer.y,oWall,false,false)
{cansee = false
}
else
{
	cansee = true
}



	if(canshoot <= 0 && cansee = true)
	{
		canshoot = 100
		var bullet = instance_create_layer(x,y, "bullets", oEBulletsmall);
		bullet.direction = image_angle;
		bullet.image_angle = image_angle;
		bullet.speed = 5;
	}


canshoot = canshoot -1
}