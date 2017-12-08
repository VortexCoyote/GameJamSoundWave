if(current_state == enemy_state.pathfind)
{
	color = c_dkgray;
	
	if(instance_exists(target))
	{
		path_x = target.x;
		path_y = target.y;
	}
	
	mp_grid_path(global.grid ,path,x,y,path_x,path_y,1);
	path_start(path,movement_speed,"",false);
	var line_collide = collision_line(x,y,target.x,target.y,obj_solid,true,true);
	var target_distance = point_distance(x,y,target.x,target.y);
	if(!line_collide and target_distance < 200)
	{
		path_end();
		current_state = enemy_state.follow;	
	}
}