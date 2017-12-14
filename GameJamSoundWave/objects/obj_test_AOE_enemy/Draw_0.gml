/// @description
draw_sprite_ext(spr_shadow_general,0,round(x),round(y)+2,
image_xscale,image_yscale,image_angle,color,image_alpha);

draw_sprite_ext(sprite_index,image_index,round(x),round(y),
image_xscale + bounce_xscale,image_yscale + bounce_yscale,image_angle,color,image_alpha);

draw_text(x,y -20,HP);

draw_path(path,x,y,false)