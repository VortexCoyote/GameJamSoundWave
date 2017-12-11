if(current_state == enemy_state.pathfind)
{
	timer--;
	color = c_dkgray;
	
	if(instance_exists(target))
	{
		path_x = target.x;
		path_y = target.y;
	}
	
	mp_grid_path(global.grid ,path,x,y,path_x,path_y,1);
	path_start(path,movement_speed -0.5,"",false);
	var line_collide = collision_line(x,y,target.x,target.y,obj_solid,true,true);
	var target_distance = point_distance(x,y,target.x,target.y);
	if(timer < 0 and !line_collide and target_distance < view_w/2)
	{
		timer = 40;
		path_end();
		current_state = enemy_state.follow;	
	}
	if(target_distance < sprite_width * 2)
	{
		timer = 40;
		path_end();
		current_state = enemy_state.follow;	
	}
}