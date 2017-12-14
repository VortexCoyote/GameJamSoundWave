var enemy_collide_x = instance_place(x + x_knockback,y,obj_enemy);
var enemy_collide_y = instance_place(x,y + y_knockback,obj_enemy);

if(enemy_collide_x and enemy_collide_x.id != id)
{
	var distance_difference = point_distance(x,y,target.x,target.y) - 
								point_distance(enemy_collide_x.x,enemy_collide_x.y,target.x,target.y);
	if(distance_difference > 0)
	{
			if(instance_place(x + x_knockback + enemy_collide_x.x_knockback,y,enemy_collide_x))
			{
					for(var i = 0; i < abs(x_knockback); i++)
					{
						if(place_meeting(x+sign(x_knockback),y,enemy_collide_x)) then break;
							x+=sign(x_knockback);
					}
					x_knockback = 0;
			}
	}
}
		
if(enemy_collide_y and enemy_collide_y.id != id)
{
	var distance_difference = point_distance(x,y,target.x,target.y) - 
								point_distance(enemy_collide_y.x,enemy_collide_y.y,target.x,target.y);
	if(distance_difference > 0)
	{
			if(instance_place(x ,y+ y_knockback + enemy_collide_y.y_knockback,enemy_collide_y))
			{
					for(var i = 0; i < abs(y_knockback); i++)
					{
						if(place_meeting(x,y+sign(y_knockback),enemy_collide_y)) then break;
							y+=sign(y_knockback);
					}
					y_knockback = 0;
			}
	}
}