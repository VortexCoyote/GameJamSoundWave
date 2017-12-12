/// @description Insert description here
// You can write your code in this editor
draw_circle_color(round(x),round(y),circle_radius/2,c_white,c_white,true);
draw_line_color(x,y,x+ lengthdir_x(circle_radius/2,dir -cone_offset),y+lengthdir_y(circle_radius/2,dir -cone_offset),c_white,c_white);
draw_line_color(x,y,x+lengthdir_x(circle_radius/2,dir +cone_offset),y+ lengthdir_y(circle_radius/2,dir +cone_offset),c_white,c_white);

draw_sprite_ext(sprite_index,image_index,round(x),round(y),
image_xscale,image_yscale,image_angle,color,image_alpha);