/// @description
event_inherited();
target = obj_player;

//Appearance
image_xscale = 3;
image_yscale = image_xscale;
color = c_white ;
sprite_normal = spr_enemy_tank_nm;

bounce_xscale = 0;
bounce_yscale = 0;
//Movement
movement_speed = 2.5;
x_speed = 0;
y_speed = 0;
dir = 0;

x_knockback = 0;
y_knockback = 0; 
expand = false;

leap_range = 0;
leap_speed = 0;

patroll_action = "patroll";
//Pathing
path_x = 0;
path_y = 0;

path = path_add();

//States
enum enemy_AOE_state
{
	follow,
	pathfind,
	stomp,
	patroll,
	dead
}

current_state = enemy_state.patroll;

timer = 120;
attack_timer = 120;
AOE_attack = noone;