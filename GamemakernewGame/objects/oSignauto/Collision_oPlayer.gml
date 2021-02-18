
delay = delay-1

if delay <= 0
{
	with (instance_create_layer(x,y-30,layer,oText))
	{
		text = other.text;
		length = string_length(text);
		
	}
	delay = 30
}
	
	
	with (oCamera)
	{
		follow = other.id;
	}

