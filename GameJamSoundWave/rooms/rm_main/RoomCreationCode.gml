randomize();

globalvar background_static;
background_static = snd_background_static;

globalvar background_dynamic;
background_dynamic = snd_background_dynamic;

if(!audio_is_playing(background_static))
{
	audio_play_sound(background_static,1,true);
}

/*if(!audio_is_playing(background_dynamic))
{
	audio_play_sound(background_dynamic,1,true);
}*/

enemies = 25;
solids = 60;
instance_create(room_width/2,room_height/2,obj_player);

for (var i = 0; i < enemies; ++i) 
{
	spawn_object(choose(obj_test_AOE_enemy,obj_test_enemy,obj_test_shoot_enemy));
}

for (var i = 0; i < solids; ++i)
{
	spawn_object(obj_brick_test);
} 

instance_create(0, 0, obj_timer)