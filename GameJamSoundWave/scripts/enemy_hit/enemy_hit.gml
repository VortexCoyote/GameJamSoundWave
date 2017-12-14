randomize();
weapon_coll = instance_place(x,y,obj_test_weapon);

if(weapon_coll)
{
	dir = point_direction(x,y,target.x,target.y) - 180;
	var target_distance = point_distance(x,y,target.x,target.y);
	x_knockback = lengthdir_x(weapon_coll.knockback,dir);
	y_knockback = lengthdir_y(weapon_coll.knockback,dir);
	enemy_knockback_collision(obj_solid);
	enemy_to_enemy_collision_knockback();
	x += x_knockback;
	y += y_knockback;
	
	
	var rand = irandom(2);
	if(rand == 1)
	{
		repeat(5)
		{
			instance_create(x,y,obj_dust);	
		}

	}
}