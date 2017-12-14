/// @description
color = c_white;


image_xscale = 3;
image_yscale = 3;

sprite_index = choose(spr_stone_small,spr_stone_medium,spr_stone_big);

if(sprite_index == spr_stone_small)
{
	sprite_normal = spr_stone_small_nm;
}
if(sprite_index == spr_stone_medium)
{
	sprite_normal = spr_stone_medium_nm;
}
if(sprite_index == spr_stone_big)
{
	sprite_normal = spr_stone_big_nm;
}

depth =-y - sprite_height/2;