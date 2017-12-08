if(current_state == enemy_state.follow)
{
	color = c_white;
	if(instance_exists(target))
	{
		dir = point_direction(x,y,target.x,target.y);
		x_speed = lengthdir_x(movement_speed,dir);
		y_speed = lengthdir_y(movement_speed,dir);
	
		if(enemy_movement_collision(obj_solid))
		{
			path_x = target.x;
			path_y = target.y;
			current_state = enemy_state.pathfind;
		}
		
		var enemy_collide_x = instance_place(x + x_speed,y,obj_enemy);
		var enemy_collide_y = instance_place(x,y + y_speed,obj_enemy);
		
		if(enemy_collide_x and enemy_collide_x.id != id)
		{
			var distance_difference = point_distance(x,y,target.x,target.y) - 
									  point_distance(enemy_collide_x.x,enemy_collide_x.y,target.x,target.y);
			if(distance_difference > 0)
			{
					if(instance_place(x + x_speed + enemy_collide_x.x_speed,y,enemy_collide_x))
					{
							for(var i = 0; i < abs(x_speed); i++)
							{
								if(place_meeting(x+sign(x_speed),y,enemy_collide_x)) then break;
									x+=sign(x_speed);
							}
							x_speed = 0;
					}
			}
		}
		
		if(enemy_collide_y and enemy_collide_y.id != id)
		{
			var distance_difference = point_distance(x,y,target.x,target.y) - 
									  point_distance(enemy_collide_y.x,enemy_collide_y.y,target.x,target.y);
			if(distance_difference > 0)
			{
					if(instance_place(x ,y+ y_speed + enemy_collide_y.y_speed,enemy_collide_y))
					{
							 for(var i = 0; i < abs(y_speed); i++)
							{
								if(place_meeting(x,y+sign(y_speed),enemy_collide_y)) then break;
									y+=sign(y_speed);
							}
							y_speed = 0;
					}
			}
		}
		
		x += x_speed;
		y += y_speed;
	}
}