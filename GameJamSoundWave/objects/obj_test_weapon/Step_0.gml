/// @description Insert description here
// You can write your code in this editor

dir = point_direction(target.x,target.y,mouse_x,mouse_y);
image_angle = dir;
x = target.x + lengthdir_x(20 + circle_radius/2.5,dir);
y = target.y + lengthdir_y(20 + circle_radius/2.5,dir);

if(mouse_wheel_up())
{
	circle_radius +=5;
}

if(mouse_wheel_down())
{
	circle_radius -=5;
}

image_xscale = circle_radius/48;
image_yscale = circle_radius/32/2;

cone_coll_obj = instance_place_list(x,y,obj_enemy);

with(obj_enemy)
{
	color = c_white;
}
if(cone_coll_obj != noone)
{ 
	
	for (var i = 0; i < ds_list_size(cone_coll_obj); ++i) 
	{
		var instance = ds_list_find_value(cone_coll_obj,i); 
		with(instance)
		{
			color = c_red;
		}
		
	}
}

/*cone_coll_obj = collision_circle_list(x,y,circle_radius,obj_enemy,true,true);

if(cone_coll_obj != noone)
{ 
	with(obj_enemy)
	{
		color = c_white;
	}
	for (var i = 0; i < ds_list_size(cone_coll_obj); ++i) 
	{
		var instance = ds_list_find_value(cone_coll_obj,i); 
		var dir_instance = point_direction(x,y,instance.x, instance.y);
		var mouse_dir = point_direction(x,y,mouse_x,mouse_y);
		if(dir_instance > mouse_dir - cone_offset and dir_instance < mouse_dir + cone_offset)
		{
			with(instance)
			{
				color = c_red;
			}
		}
		
	}
}*/