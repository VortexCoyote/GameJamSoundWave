if(instance_exists(argument0))
{
	var target_x = instance_place(x + x_speed,y,argument0);
	var target_y = instance_place(x,y+y_speed,argument0);
	if(target_x)
	{
		for(var i = 0; i < abs(x_speed); i++)
		{
			if(place_meeting(x+sign(x_speed),y,argument0)) then break;
				x+=sign(x_speed);
		}
		x_speed = 0;
	}
	
	if(target_y)
	{
		for(var i = 0; i < abs(y_speed); i++)
		{
			if(place_meeting(x,y+sign(y_speed),argument0)) then break;
				y+=sign(y_speed);
		}
		y_speed = 0;
	}
}