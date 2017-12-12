if(current_state == enemy_state.pathfind)
{
	timer--;
	attack_timer--;
	movement_speed = lerp(movement_speed,4,0.2);
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
		path_end();
		current_state = enemy_state.follow;	
	}
	if(target_distance < sprite_width * 2)
	{
		path_end();
		current_state = enemy_state.follow;	
	}
	
	if(!line_collide and timer < 0 and target_distance < 150 and attack_timer > 0)
	{
		path_end();
		timer = 40;
		attack_timer = 120;
		current_state = enemy_state.leap;
	}
}