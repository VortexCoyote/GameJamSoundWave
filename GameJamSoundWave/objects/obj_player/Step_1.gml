  /// @description
depth = -y;

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
