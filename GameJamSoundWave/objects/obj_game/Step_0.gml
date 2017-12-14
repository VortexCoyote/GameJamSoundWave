/// @descriptions
if (keyboard_check_pressed(vk_escape))
{
    game_end();
}

if(keyboard_check_pressed(ord("R")))
{
	game_restart();
}


if(keyboard_check_pressed(vk_enter))
{
	event_user(TOGGLE_PAUSE);
}


if(keyboard_check(ord("V")))
{
	SlowMo = lerp(SlowMo,2,0.05);
}
else
{
	SlowMo = lerp(SlowMo,1,0.4);
}

SecondsSinceLastEnemySpawn += 1/room_speed;

if(EnemiesDestroyed >= 20)
{
	SecondsBetweenEnemySpawn = 18;
}
if(EnemiesDestroyed >= 35)
{
	SecondsBetweenEnemySpawn = 16;
}
if(EnemiesDestroyed >= 60)
{
	SecondsBetweenEnemySpawn = 14;
}
if(EnemiesDestroyed >= 85)
{
	SecondsBetweenEnemySpawn = 12;
}

if (SecondsSinceLastEnemySpawn >= SecondsBetweenEnemySpawn)
{
	repeat(12)
	{
		spawn_object(choose(obj_test_AOE_enemy,obj_test_enemy,obj_test_enemy,obj_test_shoot_enemy));
	}
	SecondsSinceLastEnemySpawn = 0;
}

text_alpha -= 0.19/room_speed;