/// @description
randomize();
image_angle = random(360);
z = irandom_range(30,40);
zspeed = irandom_range(3,5);

dir = random(360);
x_speed = irandom_range(1,4);
y_speed = irandom_range(1,4);
image_xscale = irandom_range(1,3);
image_yscale = image_xscale;

color = c_red;
sprite_index = choose(spr_chunk1,spr_chunk2);