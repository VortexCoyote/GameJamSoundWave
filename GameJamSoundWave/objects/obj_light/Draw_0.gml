draw_set_colour(c_white)

if !surface_exists(light_surface ) light_surface  = surface_create(view_w, view_h)
if !surface_exists(blur_surface  ) blur_surface   = surface_create(view_w, view_h)
if !surface_exists(object_surface) object_surface = surface_create(view_w, view_h)
if !surface_exists(normal_surface) normal_surface = surface_create(view_w, view_h)


//Handles Light
surface_set_target( object_surface )
draw_clear_alpha( c_white, 0.0 )
   
for (i = 0; i < instance_number(obj_brick_test); ++i)
{
	object = instance_find(obj_brick_test,i);
		
	draw_sprite_ext(object.sprite_index,object.image_index,round(object.x - view_x),round(object.y - view_y),
	object.image_xscale,object.image_yscale,object.image_angle,object.color,object.image_alpha);
}

for (i = 0; i < instance_number(obj_enemy); ++i) 
{
	object = instance_find(obj_enemy, i);
		
	draw_sprite_ext(object.sprite_index,object.image_index,round(object.x - view_x),round(object.y - view_y),
	object.image_xscale,object.image_yscale,object.image_angle,object.color,object.image_alpha);    
}

surface_reset_target();


//Normal Mapping
surface_set_target( normal_surface )
draw_clear_alpha( c_white, 0.0 )

shader_set(sh_normal)
shader_set_uniform_f(light_position_normal, (obj_player.x - view_x)/view_w, (obj_player.y - view_y)/view_h)
shader_set_uniform_f(width, width)

draw_surface_stretched(object_surface, 0, 0, view_w, view_h)
shader_reset()

surface_reset_target()	


//Sets resolution for the raycaster
surface_set_target( light_surface )
draw_clear_alpha( c_white, 0.0 )
	
shader_set(sh_light)

shader_set_uniform_f(light_position, (obj_player.x - view_x)/view_w, (obj_player.y - view_y)/view_h)
shader_set_uniform_f(light_colour, r, g, b);
	
draw_surface_stretched(object_surface, 0, 0, l_w, l_h)
shader_reset()
	
surface_reset_target()
	

//Blurs the light surface
surface_set_target( blur_surface )
draw_clear_alpha( c_white, 0.0 )

shader_set(sh_blur)
draw_surface_stretched(light_surface, 0, 0, view_w, view_h)
shader_reset()

surface_reset_target()	


//Draws all the necessary surfaces
draw_surface_stretched(normal_surface, view_x, view_y, view_w, view_h)
draw_surface_stretched(blur_surface,   view_x, view_y, n_w,    n_h)



