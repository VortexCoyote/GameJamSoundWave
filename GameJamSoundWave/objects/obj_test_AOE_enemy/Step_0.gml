 /// @description
enemy_AOE_follow(enemy_AOE_state.follow);
enemy_AOE_pathfind(enemy_AOE_state.pathfind);
enemy_AOE_stomp(enemy_AOE_state.stomp);
enemy_AOE_patroll1(enemy_AOE_state.patroll);

enemy_hit();
if(instance_exists(AOE_attack))
{
	with(AOE_attack)
	{
		x = other.x;
		y = other.y;
	}
}

if(HP <= 0)
{
	current_state = enemy_AOE_state.dead;
}

if(current_state == enemy_AOE_state.dead)
{
	image_xscale -= 0.3;
	image_yscale = image_xscale;
	
	if(image_xscale < 1)
	{
		repeat(9)
		{
			instance_create(x,y,obj_chunk);
		}
		
		var sound = choose(snd_enemy_death2,snd_enemy_death3);
		audio_sound_pitch(sound,random_range(0.9,1.1));
		audio_play_sound(sound,2,false);
		EnemiesDestroyed++;
		instance_destroy();
	}
}