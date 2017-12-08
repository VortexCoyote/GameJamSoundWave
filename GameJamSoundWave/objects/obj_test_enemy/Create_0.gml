/// @description

target = obj_player;

//Appearance
image_xscale = 1;
image_yscale = image_xscale;
color = c_purple;

//Movement
movement_speed = 4;
x_speed = 0;
y_speed = 0;
dir = 0;

path_x = 0;
path_y = 0;

//States
enum enemy_state
{
	follow,
	pathfind
}

current_state = enemy_state.follow;