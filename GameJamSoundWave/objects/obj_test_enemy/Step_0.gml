/// @description
if(instance_exists(obj_player))
{
	dir = point_direction(x,y,target.x,target.y);
	x_speed = lengthdir_x(movement_speed,dir);
	y_speed = lengthdir_y(movement_speed,dir);
	
	x += x_speed;
	y += y_speed;
	
}