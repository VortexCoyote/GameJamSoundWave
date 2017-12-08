if(current_state == enemy_state.follow)
{
	if(instance_exists(target))
	{
		dir = point_direction(x,y,target.x,target.y);
		x_speed = lengthdir_x(movement_speed,dir);
		y_speed = lengthdir_y(movement_speed,dir);
	
		if(enemy_movement_collision(obj_solid))
		{
			color = c_red;
			path_x = target.x;
			path_y = target.y;
			current_state = enemy_state.pathfind;
		}
	
		x += x_speed;
		y += y_speed;
	}
}