up = keyboard_check(key_up);
down = keyboard_check(key_down)
left = keyboard_check(key_left)
right = keyboard_check(key_right);

//compute axes
var axis_x_dir = right - left;
var axis_y_dir = down - up;

//acceleration
var axis_x_add = axis_x_dir * axis_x_acceleration;
var axis_y_add = axis_y_dir * axis_y_acceleration;

//restitution
var axis_x_sub = min(axis_x_restitution,abs(axis_x)) * sign(axis_x) * (axis_x_dir == 0);
var axis_y_sub = min(axis_y_restitution,abs(axis_y)) * sign(axis_y) * (axis_y_dir == 0);

axis_x = clamp(axis_x + axis_x_add - axis_x_sub, -axis_x_max,axis_x_max)/SlowMo;
axis_y = clamp(axis_y + axis_y_add - axis_y_sub, -axis_y_max,axis_y_max)/SlowMo;

//normalize axis_x,axis_y - pythagoras sats vector problem
if!(axis_x == 0 and axis_y == 0)
{
	var dist = sqrt(sqr(axis_x) + sqr(axis_y));
	var mdist = min(movement_speed, dist);
	axis_x = ((axis_x/dist) * mdist);
	axis_y = ((axis_y/dist) * mdist);
}

player_movement_collision(obj_solid)

x += axis_x;
y += axis_y;

