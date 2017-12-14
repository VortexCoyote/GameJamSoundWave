  /// @description
depth = -y;
if(!dead)
{
	player_movement();

	//Graphics Related
	for(i = 0; i < 3; ++i) 
	{
		animation[i] += 3;
	}

	if down  { sprite_dir = 0 image_xscale =  3 }
	if left  { sprite_dir = 1 image_xscale =  3 }
	if up	 { sprite_dir = 2 image_xscale =  3 }
	if right { sprite_dir = 1 image_xscale = -3 }

	attack_timer--;
	if(mouse_check_button_pressed(mb_left) and attack_timer <= 0)
	{
		instance_create(x,y,obj_test_weapon);
		attack_timer = 100;
	}


	AOE_attack_timer --;
	if(keyboard_check_pressed(vk_space) and AOE_attack_timer <= 0)
	{
		AOE_weapon =  instance_create(x,y,obj_AOE_weapon);
		AOE_attack_timer = 160;
	}

	AOE_attack_timer = clamp(AOE_attack_timer,0,1000);
	attack_timer = clamp(attack_timer,0,1000);

	if(instance_exists(AOE_weapon))
	{
		with(AOE_weapon)
		{
			x = other.x;
			y = other.y;
		}
	}


	enemy_obj = instance_place(x,y,obj_enemy);
	hit = false;
	if(enemy_obj)
	{	
		HP -= 2;
		hit = true;
		/*dir = point_direction(x,y,enemy_obj.x,enemy_obj.y) - 180;
		x_speed += lengthdir_x(10,dir);
		y_speed += lengthdir_y(10,dir);
		entity_collision(obj_solid);
	
		x+= x_speed;
		y+= y_speed;*/
	
	}
	
	if(instance_place(x,y,obj_line_projectile))
	{
		hit = true;	
	}
	
	if(HP <= 0)
	{
		dead = true;	
		var sound = snd_player_death;
		audio_play_sound(sound,3,false);
	}
}
else
{
	image_xscale = lerp(image_xscale,0,0.15);
	image_yscale = lerp(image_yscale,0,0.3);
	
	if(keyboard_check_pressed(vk_space))
	{
		room_goto(rm_main);	
	}
}



