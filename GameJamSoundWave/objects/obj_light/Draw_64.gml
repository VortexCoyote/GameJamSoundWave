shader_set(sh_shade)

draw_surface(application_surface, 0, 0)

shader_reset()


//Draw Enemy Eyes
for (i = 0; i < instance_number(obj_enemy); ++i) 
{
	object = instance_find(obj_enemy, i);
		
	draw_sprite_ext(object.sprite_eyes,object.image_index,round(object.x - view_x),round(object.y - view_y),
	object.image_xscale,object.image_yscale,object.image_angle,object.color,object.image_alpha);    
}