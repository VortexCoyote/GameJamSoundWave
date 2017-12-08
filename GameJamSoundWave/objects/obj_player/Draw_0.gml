/// @description
//draw_sprite_ext(sprite_index,image_index,round(x),round(y),
//image_xscale,image_yscale,image_angle,color,image_alpha);


draw_sprite_ext(spr_player_body,sprite_dir,x,y + 2*dcos(animation[0]), image_xscale, image_yscale, image_angle, color, image_alpha);
draw_sprite_ext(spr_player_crystal,sprite_dir,x,y + 2*dcos(animation[1]), image_xscale, image_yscale, image_angle, color, image_alpha);
draw_sprite_ext(spr_player_head,sprite_dir,x,y + 2*dcos(animation[2]), image_xscale, image_yscale, image_angle, color, image_alpha);