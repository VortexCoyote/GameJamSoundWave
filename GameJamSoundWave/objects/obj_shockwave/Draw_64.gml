if !surface_exists(app_surface) surface_create(view_w, view_h)

surface_set_target(app_surface)

shader_set(sh_shockwave)

shader_set_uniform_f(shockwavePosition, (x - view_x), (y - view_y))
shader_set_uniform_f(lengthValue, length)
shader_set_uniform_f(resolution, view_w, view_h)

draw_surface_ext(application_surface, 0, 0, 1.0, 1.0, 0, c_white, 1.0)

shader_reset()

surface_reset_target()


shader_set(sh_shade)

draw_surface(app_surface, 0, 0)

shader_reset()