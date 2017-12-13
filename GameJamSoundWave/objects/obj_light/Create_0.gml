light_position = shader_get_uniform(sh_light, "lightPosition")
light_colour = shader_get_uniform(sh_light, "lightColour")

r = 0.7//random_range(0,1)
g = 0.7//random_range(0,1)
b = 0.7//random_range(0,1)

l_w = view_w*0.3
l_h = view_h*0.3

n_w = ( view_w / l_w ) * view_w
n_h = ( view_h / l_h ) * view_h

lowres_surface = surface_create(l_w, l_h)
blur_surface = surface_create(l_w, l_h)

