/// @description

if(sprite_index == spr_stone_medium)
{
	draw_sprite_ext(spr_shadow_general,0,round(x),round(y)+ 16,
	image_xscale,image_yscale,image_angle,color,image_alpha);
}

if(sprite_index == spr_stone_big)
{
	draw_sprite_ext(spr_shadow_general,0,round(x),round(y)+44,
	image_xscale +2,image_yscale+2,image_angle,color,image_alpha);
}


if(sprite_index == spr_stone_small)
{
	draw_sprite_ext(spr_shadow_general,0,round(x),round(y)- 8,
	image_xscale - 1,image_yscale,image_angle,color,image_alpha);
}

draw_sprite_ext(sprite_index,image_index,round(x),round(y),
image_xscale,image_yscale,image_angle,color,image_alpha);
