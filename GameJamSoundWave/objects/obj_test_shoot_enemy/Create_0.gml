/// @description
target = obj_player;

//Appearance
image_xscale = 1;
image_yscale = image_xscale;
color = c_gray;

//Movement
movement_speed = 3;
x_speed = 0;
y_speed = 0;
dir = 0;

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
	patroll
}

current_state = enemy_shoot_state.patroll;

timer = 120;
attack_timer = 120;
