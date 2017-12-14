/// @description Insert description here
// You can write your code in this editor

target = obj_player;
color = c_white;

dir = 0;
//Wave Attack
circle_radius = 200;
cone_coll_obj = noone;
cone_offset = 30;
knockback = 2.6;

dmg = 1.5;

absolute_length = sprite_width;
length_point_x = x + lengthdir_x(sprite_width,dir); 
length_point_y = y + lengthdir_y(sprite_width,dir); 

alarm[0] = 30;

sub_length = 2;
