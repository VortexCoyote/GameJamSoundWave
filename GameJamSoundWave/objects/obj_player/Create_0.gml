/// @description Insert description here
// You can write your code in this editor
//Appearance
color = c_white;
image_xscale = 1;
image_yscale = image_xscale;

//Keys
key_up = ord("W");
key_down = ord("S");
key_left = ord("A");
key_right = ord("D");
up = keyboard_check(key_up);
down = keyboard_check(key_down);
left = keyboard_check(key_left);
right = keyboard_check(key_right);

//Movement
movement_speed = 5;

axis_x = 0;
axis_y = 0;

axis_y_max = movement_speed;
axis_x_max = movement_speed;

axis_x_acceleration = 1.5;
axis_y_acceleration = 1.5;

axis_x_restitution = 0.5;
axis_y_restitution = 0.5;

true_xspeed = 0;
true_yspeed = 0;
