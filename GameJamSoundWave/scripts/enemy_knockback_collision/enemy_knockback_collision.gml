brickx = instance_place(x + x_knockback,y,argument0);
if(brickx)
{
	for(var i = 0; i < abs(x_knockback); i++)
	{
		if(place_meeting(x+sign(x_knockback),y,brickx)) then break;
			x+=sign(x_knockback);
	}
	x_knockback = 0;
	
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
}
	
bricky = instance_place(x,y + y_knockback,argument0);
if(bricky)
{
	for(var i = 0; i < abs(y_knockback); i++)
	{
		if(place_meeting(x,y+sign(y_knockback),bricky)) then break;
			y+=sign(y_knockback);

	}
	y_knockback = 0;
}
