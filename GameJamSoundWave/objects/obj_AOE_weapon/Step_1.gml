/// @description
shake_screen(1);
circle_radius += 6;


if(circle_radius >= 200)
{
	instance_destroy();
}

coll_obj = collision_circle_list(x,y,circle_radius,obj_enemy,true,true);

if(coll_obj != noone)
{ 
	for (var i = 0; i < ds_list_size(coll_obj); ++i) 
	{
		var instance = ds_list_find_value(coll_obj,i);
		with(instance)
		{
			var _dir = point_direction(x,y,target.x,target.y) - 180;
			x_knockback += lengthdir_x(other.knockback,_dir);
			y_knockback += lengthdir_y(other.knockback,_dir);
			
			enemy_knockback_collision(obj_solid);
			enemy_to_enemy_collision_knockback();
			x += x_knockback;
			y += y_knockback;
	
	
			var rand = irandom(2);
			if(rand == 1)
			{
				instance_create(x,y,obj_dust);	
			}
		}
	}
}