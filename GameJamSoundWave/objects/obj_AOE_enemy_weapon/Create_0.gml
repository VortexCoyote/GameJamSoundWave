/// @description
circle_radius = 30;
knockback = 0.7;
coll_obj = noone;

shockwave = instance_create(x, y, obj_shockwave)

randomize();
sound = choose(snd_attack1, snd_attack2,snd_attack3);
audio_sound_pitch(sound,random_range(0.9,1.1));
audio_play_sound(sound,2,false);

dmg = 1; 

