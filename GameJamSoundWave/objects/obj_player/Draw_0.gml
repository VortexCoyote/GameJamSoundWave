/// @description
//draw_sprite_ext(sprite_index,image_index,round(x),round(y),
//image_xscale,image_yscale,image_angle,color,image_alpha);

//draw_line_pixel(x,y,mouse_x,mouse_y,c_white,1.5);
draw_sprite_ext(spr_player_body,sprite_dir,round(x),round(y) + 2*dcos(animation[0]), image_xscale, image_yscale, image_angle, make_color_rgb(255- AOE_attack_timer*1.5,255- AOE_attack_timer*1.5,255- AOE_attack_timer*1.5), image_alpha);
draw_sprite_ext(spr_player_head,sprite_dir,round(x),round(y) + 2*dcos(animation[2]), image_xscale, image_yscale, image_angle,  make_color_rgb(255- AOE_attack_timer*1.5,255- AOE_attack_timer*1.5,255- AOE_attack_timer*1.5), image_alpha);

//I need a seperate surface for this
//shader_set(sh_bloom)

draw_sprite_ext(spr_player_crystal,sprite_dir,round(x),round(y) + 2*dcos(animation[1]), image_xscale, image_yscale, image_angle,  make_color_rgb(255-attack_timer*1.5,255-attack_timer*1.5,255-attack_timer*1.5), image_alpha);

//shader_reset()