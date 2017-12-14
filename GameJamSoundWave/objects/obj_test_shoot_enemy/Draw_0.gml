/// @description
draw_sprite_ext(spr_shadow_general,0,round(x),round(y)-12,
image_xscale -1.5,image_yscale,image_angle,make_color_rgb(HP*2,HP*2,180),image_alpha);

draw_sprite_ext(sprite_index,image_index,round(x),round(y),
image_xscale,image_yscale,image_angle,color,image_alpha);

draw_text(x,y -20,HP);

//draw_path(path,x,y,false)