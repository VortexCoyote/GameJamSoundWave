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