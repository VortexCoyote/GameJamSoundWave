draw_set_colour(c_white)

if ( surface_exists( light_surface ) ) 
{
	
    surface_set_target( light_surface );
    draw_clear_alpha( c_white, 0.0 );
   
	for (i = 0; i < instance_number(obj_brick_test); ++i)
	{
		object = instance_find(obj_brick_test,i);
		
		draw_sprite_ext(object.sprite_index,object.image_index,round(object.x - view_x),round(object.y - view_y),
		object.image_xscale,object.image_yscale,object.image_angle,object.color,object.image_alpha);
	}
	
    surface_reset_target();
} 

else 
{
   light_surface = surface_create(view_w, view_h)
   show_debug_message("Created surface");
}

if !surface_exists(lowres_surface) lowres_surface = surface_create(view_w, view_h)

if(surface_exists(light_surface))
{
	surface_set_target( lowres_surface );
	draw_clear_alpha( c_white, 0.0 );
	
	shader_set(sh_light)

    shader_set_uniform_f(light_position, (obj_player.x - view_x)/view_w, (obj_player.y - view_y)/view_h)
    shader_set_uniform_f(light_colour, r, g, b);
	
    draw_surface_stretched(light_surface, 0, 0, l_w, l_h)
	
	shader_reset()
	
	surface_reset_target()
	
	draw_surface_stretched(lowres_surface, view_x, view_y, n_w, n_h)
}
