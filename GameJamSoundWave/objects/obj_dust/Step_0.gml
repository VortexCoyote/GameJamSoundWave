/// @description Insert description here
// You can write your code in this editor
zspeed -= 0.2;
        
if ((z + zspeed) < 0)
{
    while(z +  sign(zspeed) > 0)
    {
        z += sign(zspeed);
    }
    if (abs(zspeed) > 1.5)
    {
        zspeed *= -0.4;
    }
    else
    {
        zspeed = 0
    }
}
else
{
    z += zspeed;
}

x+= lengthdir_x(x_speed,dir);
y+= lengthdir_y(y_speed,dir);
x_speed = lerp(x_speed,0,0.2);
y_speed = lerp(y_speed,0,0.2);

if(z <= 1)
{
	if(alarm[0] == -1)
	{
		alarm[0] = irandom_range(120,160);
	}
}
