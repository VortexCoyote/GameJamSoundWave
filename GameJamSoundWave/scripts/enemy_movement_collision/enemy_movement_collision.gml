brickx = instance_place(x + x_speed,y,argument0);
if(brickx)
{
	for(var i = 0; i < abs(x_speed); i++)
	{
		if(place_meeting(x+sign(x_speed),y,brickx)) then break;
			x+=sign(x_speed);
	}
	x_speed = 0;
	
	//makes enemy not stuck
	if(x > brickx.x and instance_place(x,y,argument0))
	{
		var p_difference = abs((x - sprite_width/2) - (brickx.x + brickx.sprite_width/2));
		if(p_difference > 0)
		{
			x+=sign(p_difference);
		}
	}
	else if(x <= brickx.x and instance_place(x,y,argument0))
	{
		var p_difference = abs((x + sprite_width/2) - (brickx.x - brickx.sprite_width/2));
		if(p_difference > 0)
		{
			x-=sign(p_difference);
		}  
	}
	return true;
}
	
bricky = instance_place(x,y + y_speed,argument0);
if(bricky)
{
	for(var i = 0; i < abs(y_speed); i++)
	{
		if(place_meeting(x,y+sign(y_speed),bricky)) then break;
			y+=sign(y_speed);

	}
	y_speed = 0;
	return true;
}

return false; 
