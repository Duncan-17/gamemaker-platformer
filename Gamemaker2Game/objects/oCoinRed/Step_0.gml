range = range - 1
yspd += grav;
//xaxis
if place_meeting(x+xspd,y,oWall){
	while !place_meeting(x+sign(xspd),y,oWall){
		x+=sign(xspd);
	}
	//bounce
	xspd *=-bouncedecay;
}
//colide on y-axis
if place_meeting(x,y+yspd,oWall){
	while !place_meeting(x,y+sign(yspd),oWall){
		y+=sign(yspd);
	}
	yspd*=-bouncedecay
}
x+=xspd
y+=yspd



if (place_meeting(x, y, oPlayer) && !collected){
	global.coins ++;
	collected = true;
}

//collected
if (collected){
	sprite_index = sCoineffect;
	
	if (floor(image_index) >= image_number - 1){
		instance_destroy();
	}
}




