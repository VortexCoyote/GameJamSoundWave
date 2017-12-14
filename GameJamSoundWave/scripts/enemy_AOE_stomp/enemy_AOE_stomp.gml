if(current_state == argument0)
{

	if(!expand)
	{
		bounce_xscale = lerp(bounce_xscale,-0.5,0.4);	 
		bounce_yscale = lerp(bounce_yscale,-0.65,0.6);	
		if(bounce_xscale == -0.5 and bounce_yscale == -0.65)
		{
			instance_create(x,y,obj_AOE_enemy_weapon);	
			expand = true;
		}
	}
	else
	{
		bounce_xscale = lerp(bounce_xscale,-0,0.3);	 
		bounce_yscale = lerp(bounce_yscale,-0,0.5);
		if(bounce_xscale == -0 and bounce_yscale == -0)
		{
			current_state = enemy_AOE_state.follow;
			expand = false;
		}
	}
		 
	
}