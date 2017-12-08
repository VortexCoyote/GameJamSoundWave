brickx = instance_place(x + argument0,y,argument2);
if(brickx)
{
	for(var i = 0; i < abs(argument0); i++)
	{
		if(place_meeting(x+sign(argument0),y,brickx)) then break;
			x+=sign(argument0);
	}
	argument0 = 0;
	
	//makes player not stuck
	if(x > brickx.x and instance_place(x,y,argument2))
	{
		var p_difference = abs((x - sprite_width/2) - (brickx.x + brickx.sprite_width/2));
		if(p_difference > 0)
		{
			x+=sign(p_difference);
		}
	}
	else if(x <= brickx.x and instance_place(x,y,argument2))
	{
		var p_difference = abs((x + sprite_width/2) - (brickx.x - brickx.sprite_width/2));
		if(p_difference > 0)
		{
			x-=sign(p_difference);
		} 
	}
	return true;
}
	
bricky = instance_place(x,y + argument1,argument2);
if(bricky)
{
	for(var i = 0; i < abs(argument1); i++)
	{
		if(place_meeting(x,y+sign(argument1),bricky)) then break;
			y+=sign(argument1);

	}
	argument1 = 0;
	return true;
}

return false; 
