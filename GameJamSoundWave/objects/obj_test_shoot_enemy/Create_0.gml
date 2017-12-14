/// @description
event_inherited();
target = obj_player;

//Appearance
image_xscale = 3;
image_yscale = image_xscale;
color = c_gray;
sprite_normal = spr_enemy_shooter_nm;

//Movement
movement_speed = 3;
x_speed = 0;
y_speed = 0;
dir = 0;

x_knockback = 0;
y_knockback = 0;

patroll_action = "patroll";
//Pathing
path_x = 0;
path_y = 0;

path = path_add();
enum enemy_shoot_state
{
	follow,
	pathfind,
	shoot,
	patroll,
	dead
}

current_state = enemy_shoot_state.patroll;

timer = 120;
attack_timer = 120;
