/// @description Insert description here
// You can write your code in this editor
shake_screen(1);
dir = point_direction(target.x,target.y,mouse_x,mouse_y);
image_angle = dir;
x = target.x + lengthdir_x(20 + circle_radius/3,dir);
y = target.y + lengthdir_y(20 + circle_radius/3,dir);

image_xscale = circle_radius/210 - sub_length;
image_yscale = circle_radius/114/2;

sub_length = lerp(sub_length,0,0.3);
circle_radius = lerp(circle_radius,450,0.4);

cone_coll_obj = instance_place_list(x,y,obj_enemy);

absolute_length = sprite_width;
length_point_x = x + lengthdir_x(sprite_width/2,dir); 
length_point_y = y + lengthdir_y(sprite_width/2,dir); 

if(cone_coll_obj != noone)
{ 
	for (var i = 0; i < ds_list_size(cone_coll_obj); ++i) 
	{
		var instance = ds_list_find_value(cone_coll_obj,i); 
		with(instance)
		{
			HP -= other.dmg;
		}
	}
}


shockwave.x = x
shockwave.y = y

shockwave.angle = dir
shockwave.length = circle_radius/4