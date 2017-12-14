depth = -1000

length = 0

shockwavePosition = shader_get_uniform(sh_shockwave_cone, "shockwavePosition")
lengthValue = shader_get_uniform(sh_shockwave_cone, "lengthValue")
angleValue = shader_get_uniform(sh_shockwave_cone, "angle")
resolution = shader_get_uniform(sh_shockwave_cone, "resolution")

app_surface = surface_create(view_w, view_h)

target = obj_player;