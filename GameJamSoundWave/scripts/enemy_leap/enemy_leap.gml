if(current_state == enemy_state.leap)
{
	var shake_value = 2;
	if(timer > 0)
	{
		var _dir = random(360);
		x_speed = lengthdir_x(shake_value,_dir);
		y_speed = lengthdir_y(shake_value,_dir);
		entity_collision(obj_solid);
		x += x_speed;
		y += y_speed;
		
		timer--;
		dir = point_direction(x,y,target.x,target.y);
		leap_range = 200;
		leap_speed = 12;
	}
	else
	{
		if(leap_range < 0)
		{
			current_state = enemy_state.follow;	
		}
		leap_speed -= 0.2;
		x_speed = lengthdir_x(leap_speed,dir);
		y_speed = lengthdir_y(leap_speed,dir);
		entity_collision(obj_solid);
		
		x+= x_speed;
		y+= y_speed;
		leap_range -= sqrt(power(x_speed,2) + power(y_speed,2));
		
	}
}