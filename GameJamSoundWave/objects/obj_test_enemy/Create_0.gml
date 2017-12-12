 /// @description

target = obj_player;

//Appearance
image_xscale = 1;
image_yscale = image_xscale;
color = c_white ;

//Movement
movement_speed = 4;
x_speed = 0;
y_speed = 0;
dir = 0;

leap_range = 0;
leap_speed = 0;
//Pathing
path_x = 0;
path_y = 0;

path = path_add();

//States
enum enemy_state
{
	follow,
	pathfind,
	leap
}

current_state = enemy_state.follow;

timer = 40;