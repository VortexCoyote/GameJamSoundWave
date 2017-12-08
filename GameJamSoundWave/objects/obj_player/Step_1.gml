  /// @description
depth = -y;

player_movement();


//Graphics Related
for(i = 0; i < 3; ++i) 
{
	animation[i] += 3;
}

if down  { sprite_dir = 0 image_xscale =  3 }
if left  { sprite_dir = 1 image_xscale =  3 }
if up	 { sprite_dir = 2 image_xscale =  3 }
if right { sprite_dir = 1 image_xscale = -3 } 

