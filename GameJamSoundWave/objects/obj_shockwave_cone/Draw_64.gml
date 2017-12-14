shader_set(sh_shockwave_cone)

shader_set_uniform_f(shockwavePosition, (x - view_x), (y - view_y))
shader_set_uniform_f(lengthValue, length)
shader_set_uniform_f(angleValue, degtorad(angle))
shader_set_uniform_f(resolution, view_w, view_h)

draw_surface_ext(application_surface, 0, 0, 1.0, 1.0, 0, c_white, 1.0)

shader_reset()




