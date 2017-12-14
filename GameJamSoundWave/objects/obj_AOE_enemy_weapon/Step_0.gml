/// @description
shake_screen(1);
circle_radius += 6;
shockwave.length = circle_radius;

if(circle_radius >= 200)
{
	instance_destroy(shockwave);
	instance_destroy();
}

coll_obj = collision_circle(x,y,circle_radius,obj_player,true,true);

if(coll_obj != noone)
{ 
	
	with(coll_obj)
	{
		var xspeed;
		var yspeed;
		var _dir = point_direction(x,y,other.x,other.y) - 180;
		xspeed = lengthdir_x(5,_dir);
		yspeed = lengthdir_y(5,_dir);
		
		var brickx = instance_place(x + xspeed,y,obj_solid);
		if(brickx)
		{
			for(var i = 0; i < abs(xspeed); i++)
			{
				if(place_meeting(x+sign(xspeed),y,brickx)) then break;
					x+=sign(xspeed);
			}
			xspeed = 0;
	
			//makes player not stuck
			if(x > brickx.x and instance_place(x,y,obj_solid))
			{
				var p_difference = abs((x - sprite_width/2) - (brickx.x + brickx.sprite_width/2));
				if(p_difference > 0)
				{
					x+=sign(p_difference);
				}
			}
			else if(x <= brickx.x and instance_place(x,y,obj_solid))
			{
				var p_difference = abs((x + sprite_width/2) - (brickx.x - brickx.sprite_width/2));
				if(p_difference > 0)
				{
					x-=sign(p_difference);
				}  
			}

		}
	
		var bricky = instance_place(x,y + yspeed,obj_solid);
		if(bricky)
		{
			for(var i = 0; i < abs(yspeed); i++)
			{
				if(place_meeting(x,y+sign(yspeed),bricky)) then break;
					y+=sign(yspeed);

			}
			yspeed = 0;
		}
		
		x += xspeed;
		y += yspeed;
		HP-=3;
	}
}