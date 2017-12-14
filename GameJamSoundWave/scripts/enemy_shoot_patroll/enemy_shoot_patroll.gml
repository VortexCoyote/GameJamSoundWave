if(current_state == argument0)
{
	var target_distance = point_distance(x,y,target.x,target.y);
	var line_collide = collision_line(x,y,target.x,target.y,obj_solid,true,true);
	
	if(target_distance < 100)
	{
		current_state = enemy_shoot_state.follow;
	}
	if(target_distance < 350 and !line_collide)
	{
		current_state = enemy_shoot_state.follow;	
	}
	
	timer--;
	if(timer < 0)
	{
		patroll_action = "idle";
		if(timer <= -80)
		{
			dir = point_direction(x,y,target.x,target.y);
			timer = 80;
			patroll_action = choose("patroll","followx","followy");
			
		}
	}
	
	if(patroll_action == "patroll")
	{
		timer--;
		x_speed = lengthdir_x(3,dir);
		y_speed = lengthdir_y(3,dir);
	}
	if(patroll_action == "followx")
	{
		dir = point_direction(x,y,target.x,target.y);
		x_speed = lengthdir_y(2,dir);
		timer--;
	}
	if(patroll_action == "followy")
	{
		dir = point_direction(x,y,target.x,target.y);
		y_speed = lengthdir_y(2,dir);
		timer--;
	}
	entity_collision(obj_solid);
	x += x_speed;
	y += y_speed;
}