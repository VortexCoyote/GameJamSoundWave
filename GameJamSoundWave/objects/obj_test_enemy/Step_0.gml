/// @description
depth = -y;

enemy_follow(enemy_state.follow);
enemy_pathfind(enemy_state.pathfind);
enemy_leap(enemy_state.leap);
enemy_patroll(enemy_state.patroll);



enemy_hit();

if(HP <= 0)
{
	current_state = enemy_state.dead;
}

if(current_state == enemy_state.dead)
{
	image_xscale -= 0.3;
	image_yscale = image_xscale;
	
	if(image_xscale < 1)
	{
		repeat(6)
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