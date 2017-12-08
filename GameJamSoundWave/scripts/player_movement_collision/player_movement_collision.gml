brickx = instance_place(x + axis_x,y,argument0);
if(brickx)
{
	for(var i = 0; i < abs(axis_x); i++)
	{
		if(place_meeting(x+sign(axis_x),y,brickx)) then break;
			x+=sign(axis_x);
	}
	axis_x = 0;
	
	//makes player not stuck
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
	
bricky = instance_place(x,y + axis_y,argument0);
if(bricky)
{
	for(var i = 0; i < abs(axis_y); i++)
	{
		if(place_meeting(x,y+sign(axis_y),bricky)) then break;
			y+=sign(axis_y);

	}
	axis_y = 0;
	return true;
}

return false; 
