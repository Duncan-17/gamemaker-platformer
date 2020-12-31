


if (showinv) && instance_exists(oPlayer)
{
	var x1,x2,y1,y2;
	x1 = oCamera.x + 200  //0 //view_xview[0]
	x2 = x1 + 235//+ 0 //view_wview[]0;
	y1 =  oCamera.y - 400 //0  //view_yview[0]
	y2 = y1 + 80//y1 + 64;
	
	draw_set_color(c_black);
	draw_set_alpha(0.8);
	draw_rectangle(x1,y1,x2,y2,0);
	draw_set_alpha(1);
	
	for (i = 0; i < maxitems; i += 1)
	{
		draw_sprite(sBorder,0,x1+24+(i * 40),y2-45)
		if (global.inventory[i] != -1)
		{
			draw_sprite(sItem,global.inventory[i],x1+24+(i *40),y2-45)
		}
	}
	
}
