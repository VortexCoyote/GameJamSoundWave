/// @description
if(length <= 0)
{
	instance_destroy();	
}

lenx = lengthdir_x(length,dir);
leny = lengthdir_y(length,dir);
length -= 3.5;

if(collision_line(x,y,x+lenx,y+leny,obj_solid,true,true))
{
	length -= 12;
}

if(collision_line(x,y,x+lenx,y+leny,obj_player,true,true))
{
	with(obj_player)
	{
		HP -= 7;	
	}
	instance_destroy();	
}

x+= lengthdir_x(_speed,dir);
y+= lengthdir_y(_speed,dir);