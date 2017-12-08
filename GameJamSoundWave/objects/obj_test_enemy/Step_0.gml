/// @description
depth = -y;
if(instance_exists(obj_player))
{
	dir = point_direction(x,y,target.x,target.y);
	x_speed = lengthdir_x(movement_speed,dir);
	y_speed = lengthdir_y(movement_speed,dir);
	
	if(enemy_movement_collision(obj_solid))
	{
		color = c_red;
	}
	else
	{
		color = c_purple;	
	}
	
	x += x_speed;
	y += y_speed;
	
	
}