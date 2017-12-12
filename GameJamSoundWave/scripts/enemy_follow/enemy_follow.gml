if(current_state == enemy_state.follow)
{

	if(instance_exists(target))
	{
		dir = point_direction(x,y,target.x,target.y);
		x_speed = lengthdir_x(movement_speed,dir);
		y_speed = lengthdir_y(movement_speed,dir);
		
		var target_distance = point_distance(x,y,target.x,target.y);
		if(enemy_movement_collision(obj_solid) and target_distance > 40)
		{
			path_x = target.x;
			path_y = target.y;
			current_state = enemy_state.pathfind;
		}
		var line_collide = collision_line(x,y,target.x,target.y,obj_solid,true,true);
		if(line_collide)
		{
			timer = 40;
			path_x = target.x;
			path_y = target.y;
			current_state = enemy_state.pathfind;
		}
		
		if(!line_collide and target_distance < 150)
		{
			timer = 40;
			current_state = enemy_state.leap;
		}
		
		enemy_to_enemy_collision();
		entity_collision(target);
		
		x += x_speed;
		y += y_speed;
	}
}