/// @description

//Appearance
color = c_white;
color_body = make_color_rgb(255,255,255);
color_head = make_color_rgb(255,255,255);
color_crystal = make_color_rgb(255,255,255);
image_xscale = 3;
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

//Graphics Related
animation[0] = 0;
animation[1] = 25;
animation[2] = 55;

sprite_dir = 0;

light = instance_create(x, y, obj_light);

//Attack
attack_timer = 0;
HP = 100;

AOE_weapon = noone;
AOE_attack_timer = 0;

enemy_obj = noone;

x_speed = 0;
y_speed = 0;
dir = 0;

hit = false;

dead = false;