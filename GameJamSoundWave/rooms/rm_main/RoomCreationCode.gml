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