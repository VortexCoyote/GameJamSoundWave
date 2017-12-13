if(current_state == argument0)
{
	randomize();
	
	if(timer > 0)
	{
		timer--;
		dir = point_direction(x,y,target.x,target.y);
		
	}
	else
	{
		var line_projectile = instance_create(x,y,obj_line_projectile);
		with(line_projectile)
		{
			dir = point_direction(x,y,target.x,target.y)+ irandom_range(-20,20);
		}
		current_state = enemy_shoot_state.follow;
	}
}